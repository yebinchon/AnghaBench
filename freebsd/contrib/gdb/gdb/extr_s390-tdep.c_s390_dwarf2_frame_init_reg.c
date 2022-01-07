
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_tdep {int abi; } ;
struct gdbarch {int dummy; } ;
struct dwarf2_frame_state_reg {void* how; } ;




 void* DWARF2_FRAME_REG_RA ;
 void* DWARF2_FRAME_REG_SAME_VALUE ;
 void* DWARF2_FRAME_REG_UNDEFINED ;
 int S390_F0_REGNUM ;
 int S390_F15_REGNUM ;
 int S390_F4_REGNUM ;
 int S390_F6_REGNUM ;
 int S390_F7_REGNUM ;
 int S390_F8_REGNUM ;
 int S390_PC_REGNUM ;
 int S390_R0_REGNUM ;
 int S390_R15_REGNUM ;
 int S390_R5_REGNUM ;
 int S390_R6_REGNUM ;
 struct gdbarch_tdep* gdbarch_tdep (struct gdbarch*) ;

__attribute__((used)) static void
s390_dwarf2_frame_init_reg (struct gdbarch *gdbarch, int regnum,
                            struct dwarf2_frame_state_reg *reg)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (gdbarch);

  switch (tdep->abi)
    {
    case 129:

      if ((regnum >= S390_R6_REGNUM && regnum <= S390_R15_REGNUM)
   || regnum == S390_F4_REGNUM
   || regnum == S390_F6_REGNUM)
 reg->how = DWARF2_FRAME_REG_SAME_VALUE;


      else if ((regnum >= S390_R0_REGNUM && regnum <= S390_R5_REGNUM)
        || (regnum >= S390_F0_REGNUM && regnum <= S390_F15_REGNUM
     && regnum != S390_F4_REGNUM && regnum != S390_F6_REGNUM))
 reg->how = DWARF2_FRAME_REG_UNDEFINED;


      else if (regnum == S390_PC_REGNUM)
 reg->how = DWARF2_FRAME_REG_RA;
      break;

    case 128:

      if ((regnum >= S390_R6_REGNUM && regnum <= S390_R15_REGNUM)
   || (regnum >= S390_F8_REGNUM && regnum <= S390_F15_REGNUM))
 reg->how = DWARF2_FRAME_REG_SAME_VALUE;


      else if ((regnum >= S390_R0_REGNUM && regnum <= S390_R5_REGNUM)
        || (regnum >= S390_F0_REGNUM && regnum <= S390_F7_REGNUM))
 reg->how = DWARF2_FRAME_REG_UNDEFINED;


      else if (regnum == S390_PC_REGNUM)
 reg->how = DWARF2_FRAME_REG_RA;
      break;
    }
}
