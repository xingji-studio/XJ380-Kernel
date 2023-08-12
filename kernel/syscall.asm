%include "sconst.inc"

_NR_get_ticks       equ 0
_NR_write           equ 1
INT_VECTOR_SYS_CALL equ 0x90

global get_ticks, write

bits 32
[section .text]

get_ticks:
    mov eax, _NR_get_ticks
    int INT_VECTOR_SYS_CALL
    ret

write:
    mov eax, _NR_write
    mov ebx, [esp + 4]
    int INT_VECTOR_SYS_CALL
    ret
