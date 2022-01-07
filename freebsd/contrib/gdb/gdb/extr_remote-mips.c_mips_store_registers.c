
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NUM_REGS ;
 int errno ;
 int mips_error (char*,int,int ) ;
 int mips_map_regno (int) ;
 int mips_receive_wait ;
 int mips_request (char,int ,int ,int*,int ,int *) ;
 int read_register (int) ;
 int safe_strerror (int ) ;

__attribute__((used)) static void
mips_store_registers (int regno)
{
  int err;

  if (regno == -1)
    {
      for (regno = 0; regno < NUM_REGS; regno++)
 mips_store_registers (regno);
      return;
    }

  mips_request ('R', mips_map_regno (regno),
  read_register (regno),
  &err, mips_receive_wait, ((void*)0));
  if (err)
    mips_error ("Can't write register %d: %s", regno, safe_strerror (errno));
}
