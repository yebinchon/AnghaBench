
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
typedef int register_t ;
struct TYPE_7__ {int rs; int rt; scalar_t__ imm; } ;
struct TYPE_6__ {int rs; int func; } ;
struct TYPE_5__ {int op; } ;
struct TYPE_8__ {unsigned int word; TYPE_3__ IType; TYPE_2__ RType; TYPE_1__ JType; } ;
typedef TYPE_4__ InstFmt ;


 int MIPS_IS_VALID_KERNELADDR (int) ;
 void* kdbpeek (int*) ;
 int kdbpeekd (int*) ;

__attribute__((used)) static int
dtrace_next_frame(register_t *pc, register_t *sp,
 register_t *args, int *valid_args)
{
 InstFmt i;




 uintptr_t va;
 unsigned instr, mask;
 unsigned int frames = 0;
 int more, stksize;
 register_t ra = 0;
 int arg, r;
 vm_offset_t addr;




 if (valid_args) {
  for (r = 0; r < 8; r++)
   valid_args[r] = 0;
 }


 stksize = 0;
 if (frames++ > 100) {

  goto error;
 }


 if (!MIPS_IS_VALID_KERNELADDR(*sp)) {
  goto error;
 }


 if (!MIPS_IS_VALID_KERNELADDR(*pc)) {
  goto error;
 }






 va = *pc - sizeof(int);
 while (1) {
  instr = kdbpeek((int *)va);


  if (((instr & 0xffff8000) == 0x27bd8000)
      || ((instr & 0xffff8000) == 0x67bd8000))
   break;


  if (instr == 0x03e00008) {

   va += 2 * sizeof(int);
   break;
  }

  va -= sizeof(int);
 }


 while ((instr = kdbpeek((int *)va)) == 0)
  va += sizeof(int);


 stksize = 0;
 more = 3;
 mask = 0;
 for (; more; va += sizeof(int),
     more = (more == 3) ? 3 : more - 1) {

  if (va >= *pc)
   break;
  instr = kdbpeek((int *)va);
  i.word = instr;
  switch (i.JType.op) {
  case 130:
   switch (i.RType.func) {
   case 132:
   case 133:
    more = 2;
    break;

   case 128:
   case 142:
    more = 1;
   };
   break;

  case 149:
  case 135:
  case 134:
  case 146:
  case 143:
  case 144:
  case 145:
   more = 2;
   break;

  case 141:
  case 140:
  case 139:
  case 138:
   switch (i.RType.rs) {
   case 148:
   case 147:
    more = 2;
   };
   break;

  case 129:

   if (i.IType.rs != 29)
    break;

   if (mask & (1 << i.IType.rt))
    break;
   mask |= (1 << i.IType.rt);
   addr = (vm_offset_t)(*sp + (short)i.IType.imm);
   switch (i.IType.rt) {
   case 4:
   case 5:
   case 6:
   case 7:






    arg = i.IType.rt - 4;
    if (args)
     args[arg] = kdbpeek((int*)addr);
    if (valid_args)
     valid_args[arg] = 1;
    break;
   case 31:
    ra = kdbpeek((int *)addr);
   }
   break;

  case 131:

   if (i.IType.rs != 29)
    break;

   if (mask & (1 << i.IType.rt))
    break;
   mask |= (1 << i.IType.rt);
   addr = (vm_offset_t)(*sp + (short)i.IType.imm);
   switch (i.IType.rt) {
   case 4:
   case 5:
   case 6:
   case 7:






    arg = i.IType.rt - 4;
    if (args)
     args[arg] = kdbpeekd((int *)addr);
    if (valid_args)
     valid_args[arg] = 1;
    break;

   case 31:
    ra = kdbpeekd((int *)addr);
   }
   break;

  case 151:
  case 150:
  case 137:
  case 136:

   if (i.IType.rs != 29 || i.IType.rt != 29)
    break;
   stksize = -((short)i.IType.imm);
  }
 }

 if (!MIPS_IS_VALID_KERNELADDR(ra))
  return (-1);

 *pc = ra;
 *sp += stksize;
 return (0);
error:
 return (-1);
}
