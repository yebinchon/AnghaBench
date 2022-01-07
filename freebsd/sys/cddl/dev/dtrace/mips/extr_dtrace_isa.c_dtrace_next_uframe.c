
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int register_t ;
struct TYPE_8__ {int cpuc_dtrace_flags; } ;
struct TYPE_6__ {int rs; int rt; scalar_t__ imm; } ;
struct TYPE_5__ {int op; } ;
struct TYPE_7__ {TYPE_2__ IType; TYPE_1__ JType; void* word; } ;
typedef TYPE_3__ InstFmt ;


 int volatile CPU_DTRACE_FAULT ;
 int MAX_FUNCTION_SIZE ;
 int MAX_PROLOGUE_SIZE ;






 TYPE_4__* cpu_core ;
 size_t curcpu ;
 void* dtrace_fuword32 (void*) ;
 int dtrace_fuword64 (void*) ;

__attribute__((used)) static int
dtrace_next_uframe(register_t *pc, register_t *sp, register_t *ra)
{
 int offset, registers_on_stack;
 uint32_t opcode, mask;
 register_t function_start;
 int stksize;
 InstFmt i;

 volatile uint16_t *flags =
     (volatile uint16_t *)&cpu_core[curcpu].cpuc_dtrace_flags;

 registers_on_stack = 0;
 mask = 0;
 function_start = 0;
 offset = 0;
 stksize = 0;

 while (offset < MAX_FUNCTION_SIZE) {
  opcode = dtrace_fuword32((void *)(vm_offset_t)(*pc - offset));

  if (*flags & CPU_DTRACE_FAULT)
   goto fault;


  if (((opcode & 0xffff8000) == 0x27bd8000)
      || ((opcode & 0xffff8000) == 0x67bd8000)) {
   function_start = *pc - offset;
   registers_on_stack = 1;
   break;
  }


  if ((opcode & 0xffff8000) == 0x3c1c0000) {





   function_start = *pc - offset;
  }

  if (function_start) {







   if (((opcode & 0xffff8000) == 0x27bd0000)
       || ((opcode & 0xffff8000) == 0x67bd0000))
    break;

   if (opcode == 0x03e00008)
    break;
  }

  offset += sizeof(int);
 }

 if (!function_start)
  return (-1);

 if (registers_on_stack) {
  offset = 0;
  while ((offset < MAX_PROLOGUE_SIZE)
      && ((function_start + offset) < *pc)) {
   i.word =
       dtrace_fuword32((void *)(vm_offset_t)(function_start + offset));
   switch (i.JType.op) {
   case 128:

    if (i.IType.rs != 29)
     break;

    if (mask & (1 << i.IType.rt))
     break;
    mask |= (1 << i.IType.rt);
    if (i.IType.rt == 31)
     *ra = dtrace_fuword32((void *)(vm_offset_t)(*sp + (short)i.IType.imm));
    break;

   case 129:

    if (i.IType.rs != 29)
     break;

    if (mask & (1 << i.IType.rt))
     break;
    mask |= (1 << i.IType.rt);

    if (i.IType.rt == 31)
     *ra = dtrace_fuword64((void *)(vm_offset_t)(*sp + (short)i.IType.imm));
   break;

   case 133:
   case 132:
   case 131:
   case 130:

    if (i.IType.rs != 29 || i.IType.rt != 29)
     break;
    stksize = -((short)i.IType.imm);
   }

   offset += sizeof(int);

   if (*flags & CPU_DTRACE_FAULT)
    goto fault;
  }
 }




 if (*pc == *ra)
  return (-1);

 *pc = *ra;
 *sp += stksize;

 return (0);
fault:



 *flags &= ~CPU_DTRACE_FAULT;
 return (-1);
}
