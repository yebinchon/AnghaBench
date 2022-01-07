
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int register_t ;


 int EINVAL ;

int
arm_predict_branch(void *cookie, u_int insn, register_t pc, register_t *new_pc,
    u_int (*fetch_reg)(void*, int),
    u_int (*read_int)(void*, vm_offset_t, u_int*))
{
 u_int addr, nregs, offset = 0;
 int error = 0;

 switch ((insn >> 24) & 0xf) {
 case 0x2:
 case 0x0:
  addr = fetch_reg(cookie, (insn >> 16) & 0xf);
  if (((insn >> 16) & 0xf) == 15)
   addr += 8;
  if (insn & 0x0200000) {
   offset = (insn >> 7) & 0x1e;
   offset = (insn & 0xff) << (32 - offset) |
       (insn & 0xff) >> offset;
  } else {

   offset = fetch_reg(cookie, insn & 0x0f);
   if ((insn & 0x0000ff0) != 0x00000000) {
    if (insn & 0x10)
     nregs = fetch_reg(cookie,
         (insn >> 8) & 0xf);
    else
     nregs = (insn >> 7) & 0x1f;
    switch ((insn >> 5) & 3) {
    case 0:

     offset = offset << nregs;
     break;
    case 1:

     offset = offset >> nregs;
     break;
    default:
     break;
    }

   }
   *new_pc = addr + offset;
   return (0);

  }

 case 0xa:
 case 0xb:
  addr = ((insn << 2) & 0x03ffffff);
  if (addr & 0x02000000)
   addr |= 0xfc000000;
  *new_pc = (pc + 8 + addr);
  return (0);
 case 0x7:
  addr = fetch_reg(cookie, insn & 0xf);
  addr = pc + 8 + (addr << 2);
  error = read_int(cookie, addr, &addr);
  *new_pc = addr;
  return (error);
 case 0x1:
  *new_pc = fetch_reg(cookie, insn & 0xf);
  return (0);
 case 0x4:
 case 0x5:
  addr = fetch_reg(cookie, (insn >> 16) & 0xf);

  if (insn & (1 << 24))
   offset = insn & 0xfff;
  if (insn & 0x00800000)
   addr += offset;
  else
   addr -= offset;
  error = read_int(cookie, addr, &addr);
  *new_pc = addr;

  return (error);
 case 0x8:
 case 0x9:
  addr = fetch_reg(cookie, (insn >> 16) & 0xf);
  nregs = (insn & 0x5555) + ((insn >> 1) & 0x5555);
  nregs = (nregs & 0x3333) + ((nregs >> 2) & 0x3333);
  nregs = (nregs + (nregs >> 4)) & 0x0f0f;
  nregs = (nregs + (nregs >> 8)) & 0x001f;
  switch ((insn >> 23) & 0x3) {
  case 0x0:
   addr = addr - 0;
   break;
  case 0x1:
   addr = addr + 0 + ((nregs - 1) << 2);
   break;
  case 0x2:
   addr = addr - 4;
   break;
  case 0x3:
   addr = addr + 4 + ((nregs - 1) << 2);
   break;
  }
  error = read_int(cookie, addr, &addr);
  *new_pc = addr;

  return (error);
 default:
  return (EINVAL);
 }
}
