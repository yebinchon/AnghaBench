
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fp_control_status; int pc; int hi; int lo; } ;


 size_t DEPRECATED_REGISTER_BYTE (int ) ;
 int DEPRECATED_REGISTER_RAW_SIZE (int ) ;
 int FP0_REGNUM ;
 int MIPS_FPREG_PLEN ;
 int MIPS_GREG_PLEN ;
 int MIPS_GREG_SIZE ;
 size_t MIPS_R_FP0 ;
 size_t MIPS_R_FPCSR ;
 size_t MIPS_R_GP0 ;
 size_t MIPS_R_HI ;
 size_t MIPS_R_LO ;
 size_t MIPS_R_PC ;
 size_t MIPS_R_SR ;
 int PS_REGNUM ;
 int PTRACE_GETFPREGS ;
 int PTRACE_GETREGS ;
 int bcopy (char*,int *,int) ;
 int current_gdbarch ;
 int * deprecated_registers ;
 int deprecated_registers_fetched () ;
 int memset (int *,int ,int) ;
 TYPE_1__* mips_regnum (int ) ;
 int net_read_registers (char*,int,int ) ;
 scalar_t__ target_has_fp ;

void
vx_read_register (int regno)
{
  char mips_greg_packet[MIPS_GREG_PLEN];
  char mips_fpreg_packet[MIPS_FPREG_PLEN];



  net_read_registers (mips_greg_packet, MIPS_GREG_PLEN, PTRACE_GETREGS);
  bcopy (&mips_greg_packet[MIPS_R_GP0], &deprecated_registers[0],
  32 * MIPS_GREG_SIZE);



  bcopy (&mips_greg_packet[MIPS_R_SR],
  &deprecated_registers[DEPRECATED_REGISTER_BYTE (PS_REGNUM)], MIPS_GREG_SIZE);
  bcopy (&mips_greg_packet[MIPS_R_LO],
  &deprecated_registers[DEPRECATED_REGISTER_BYTE (mips_regnum (current_gdbarch)->lo)], MIPS_GREG_SIZE);
  bcopy (&mips_greg_packet[MIPS_R_HI],
  &deprecated_registers[DEPRECATED_REGISTER_BYTE (mips_regnum (current_gdbarch)->hi)], MIPS_GREG_SIZE);
  bcopy (&mips_greg_packet[MIPS_R_PC],
  &deprecated_registers[DEPRECATED_REGISTER_BYTE (mips_regnum (current_gdbarch)->pc)], MIPS_GREG_SIZE);






  if (target_has_fp)
    {
      net_read_registers (mips_fpreg_packet, MIPS_FPREG_PLEN,
     PTRACE_GETFPREGS);



      bcopy (&mips_fpreg_packet[MIPS_R_FP0],
      &deprecated_registers[DEPRECATED_REGISTER_BYTE (FP0_REGNUM)],
      DEPRECATED_REGISTER_RAW_SIZE (FP0_REGNUM) * 32);



      bcopy (&mips_fpreg_packet[MIPS_R_FPCSR],
      &deprecated_registers[DEPRECATED_REGISTER_BYTE (mips_regnum (current_gdbarch)->fp_control_status)],
      DEPRECATED_REGISTER_RAW_SIZE (mips_regnum (current_gdbarch)->fp_control_status));
    }
  else
    {
      memset (&deprecated_registers[DEPRECATED_REGISTER_BYTE (FP0_REGNUM)],
       0, DEPRECATED_REGISTER_RAW_SIZE (FP0_REGNUM) * 32);
      memset (&deprecated_registers[DEPRECATED_REGISTER_BYTE (mips_regnum (current_gdbarch)->fp_control_status)],
       0, DEPRECATED_REGISTER_RAW_SIZE (mips_regnum (current_gdbarch)->fp_control_status));
    }



  deprecated_registers_fetched ();
}
