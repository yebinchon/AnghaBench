
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
 int PTRACE_SETFPREGS ;
 int PTRACE_SETREGS ;
 int bcopy (int *,char*,int) ;
 int current_gdbarch ;
 int * deprecated_registers ;
 TYPE_1__* mips_regnum (int ) ;
 int net_write_registers (char*,int,int ) ;
 scalar_t__ target_has_fp ;

vx_write_register (int regno)
{
  char mips_greg_packet[MIPS_GREG_PLEN];
  char mips_fpreg_packet[MIPS_FPREG_PLEN];



  bcopy (&deprecated_registers[0], &mips_greg_packet[MIPS_R_GP0],
  32 * MIPS_GREG_SIZE);



  bcopy (&deprecated_registers[DEPRECATED_REGISTER_BYTE (PS_REGNUM)],
  &mips_greg_packet[MIPS_R_SR], MIPS_GREG_SIZE);
  bcopy (&deprecated_registers[DEPRECATED_REGISTER_BYTE (mips_regnum (current_gdbarch)->lo)],
  &mips_greg_packet[MIPS_R_LO], MIPS_GREG_SIZE);
  bcopy (&deprecated_registers[DEPRECATED_REGISTER_BYTE (mips_regnum (current_gdbarch)->hi)],
  &mips_greg_packet[MIPS_R_HI], MIPS_GREG_SIZE);
  bcopy (&deprecated_registers[DEPRECATED_REGISTER_BYTE (mips_regnum (current_gdbarch)->pc)],
  &mips_greg_packet[MIPS_R_PC], MIPS_GREG_SIZE);

  net_write_registers (mips_greg_packet, MIPS_GREG_PLEN, PTRACE_SETREGS);



  if (target_has_fp)
    {


      bcopy (&deprecated_registers[DEPRECATED_REGISTER_BYTE (FP0_REGNUM)],
      &mips_fpreg_packet[MIPS_R_FP0],
      DEPRECATED_REGISTER_RAW_SIZE (FP0_REGNUM) * 32);



      bcopy (&deprecated_registers[DEPRECATED_REGISTER_BYTE (mips_regnum (current_gdbarch)->fp_control_status)],
      &mips_fpreg_packet[MIPS_R_FPCSR],
      DEPRECATED_REGISTER_RAW_SIZE (mips_regnum (current_gdbarch)->fp_control_status));

      net_write_registers (mips_fpreg_packet, MIPS_FPREG_PLEN,
      PTRACE_SETFPREGS);
    }
}
