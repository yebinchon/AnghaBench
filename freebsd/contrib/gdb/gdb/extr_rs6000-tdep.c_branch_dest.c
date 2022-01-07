
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct frame_info {int dummy; } ;
struct TYPE_2__ {int ppc_lr_regnum; int ppc_ctr_regnum; int wordsize; } ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ SIG_FRAME_PC_OFFSET ;
 scalar_t__ TEXT_SEGMENT_BASE ;
 int current_gdbarch ;
 TYPE_1__* gdbarch_tdep (int ) ;
 struct frame_info* get_current_frame () ;
 scalar_t__ get_frame_base (struct frame_info*) ;
 scalar_t__ read_memory_addr (scalar_t__,int ) ;
 int read_register (int ) ;

__attribute__((used)) static CORE_ADDR
branch_dest (int opcode, int instr, CORE_ADDR pc, CORE_ADDR safety)
{
  CORE_ADDR dest;
  int immediate;
  int absolute;
  int ext_op;

  absolute = (int) ((instr >> 1) & 1);

  switch (opcode)
    {
    case 18:
      immediate = ((instr & ~3) << 6) >> 6;
      if (absolute)
 dest = immediate;
      else
 dest = pc + immediate;
      break;

    case 16:
      immediate = ((instr & ~3) << 16) >> 16;
      if (absolute)
 dest = immediate;
      else
 dest = pc + immediate;
      break;

    case 19:
      ext_op = (instr >> 1) & 0x3ff;

      if (ext_op == 16)
 {
          dest = read_register (gdbarch_tdep (current_gdbarch)->ppc_lr_regnum) & ~3;





   if (dest < TEXT_SEGMENT_BASE)
     {
       struct frame_info *fi;

       fi = get_current_frame ();
       if (fi != ((void*)0))
  dest = read_memory_addr (get_frame_base (fi) + SIG_FRAME_PC_OFFSET,
      gdbarch_tdep (current_gdbarch)->wordsize);
     }
 }

      else if (ext_op == 528)
 {
          dest = read_register (gdbarch_tdep (current_gdbarch)->ppc_ctr_regnum) & ~3;




   if (dest < TEXT_SEGMENT_BASE)
            dest = read_register (gdbarch_tdep (current_gdbarch)->ppc_lr_regnum) & ~3;
 }
      else
 return -1;
      break;

    default:
      return -1;
    }
  return (dest < TEXT_SEGMENT_BASE) ? safety : dest;
}
