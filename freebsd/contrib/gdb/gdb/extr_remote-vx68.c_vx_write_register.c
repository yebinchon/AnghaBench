
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t DEPRECATED_REGISTER_BYTE (int ) ;
 int FP0_REGNUM ;
 int FPC_REGNUM ;
 int MC68K_FPREG_PLEN ;
 int MC68K_FPREG_SIZE ;
 int MC68K_GREG_PLEN ;
 int MC68K_GREG_SIZE ;
 size_t MC68K_R_D0 ;
 size_t MC68K_R_FP0 ;
 size_t MC68K_R_FPCR ;
 size_t MC68K_R_PC ;
 size_t MC68K_R_SR ;
 int PC_REGNUM ;
 int PS_REGNUM ;
 int PTRACE_SETFPREGS ;
 int PTRACE_SETREGS ;
 int bcopy (int *,char*,int) ;
 int * deprecated_registers ;
 int net_write_registers (char*,int,int ) ;
 scalar_t__ target_has_fp ;

void
vx_write_register (int regno)
{
  char mc68k_greg_packet[MC68K_GREG_PLEN];
  char mc68k_fpreg_packet[MC68K_FPREG_PLEN];



  bcopy (deprecated_registers, &mc68k_greg_packet[MC68K_R_D0],
  16 * MC68K_GREG_SIZE);
  bcopy (&deprecated_registers[DEPRECATED_REGISTER_BYTE (PS_REGNUM)],
  &mc68k_greg_packet[MC68K_R_SR], MC68K_GREG_SIZE);
  bcopy (&deprecated_registers[DEPRECATED_REGISTER_BYTE (PC_REGNUM)],
  &mc68k_greg_packet[MC68K_R_PC], MC68K_GREG_SIZE);

  net_write_registers (mc68k_greg_packet, MC68K_GREG_PLEN, PTRACE_SETREGS);



  if (target_has_fp)
    {
      bcopy (&deprecated_registers[DEPRECATED_REGISTER_BYTE (FP0_REGNUM)],
      &mc68k_fpreg_packet[MC68K_R_FP0],
      MC68K_FPREG_SIZE * 8);
      bcopy (&deprecated_registers[DEPRECATED_REGISTER_BYTE (FPC_REGNUM)],
      &mc68k_fpreg_packet[MC68K_R_FPCR],
      MC68K_FPREG_PLEN - (MC68K_FPREG_SIZE * 8));

      net_write_registers (mc68k_fpreg_packet, MC68K_FPREG_PLEN,
      PTRACE_SETFPREGS);
    }
}
