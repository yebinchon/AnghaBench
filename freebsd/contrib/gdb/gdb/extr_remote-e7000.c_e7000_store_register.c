
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ arch; } ;


 int CCR_REGNUM ;
 int GBR_REGNUM ;
 int MACH_REGNUM ;
 int MACL_REGNUM ;
 int PC_REGNUM ;
 int PR_REGNUM ;
 int SR_REGNUM ;
 TYPE_1__* TARGET_ARCHITECTURE ;
 int VBR_REGNUM ;
 scalar_t__ bfd_arch_h8300 ;
 scalar_t__ bfd_arch_sh ;
 int e7000_store_registers () ;
 int expect_prompt () ;
 char* phex_nz (int ,int ) ;
 int puts_e7000debug (char*) ;
 int read_register (int) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static void
e7000_store_register (int regno)
{
  char buf[200];

  if (regno == -1)
    {
      e7000_store_registers ();
      return;
    }

  if (TARGET_ARCHITECTURE->arch == bfd_arch_h8300)
    {
      if (regno <= 7)
 {
   sprintf (buf, ".ER%d %s\r", regno, phex_nz (read_register (regno), 0));
   puts_e7000debug (buf);
 }
      else if (regno == PC_REGNUM)
 {
   sprintf (buf, ".PC %s\r", phex_nz (read_register (regno), 0));
   puts_e7000debug (buf);
 }







    }

  else if (TARGET_ARCHITECTURE->arch == bfd_arch_sh)
    {
      if (regno == PC_REGNUM)
 {
   sprintf (buf, ".PC %s\r", phex_nz (read_register (regno), 0));
   puts_e7000debug (buf);
 }

      else if (regno == SR_REGNUM)
 {
   sprintf (buf, ".SR %s\r", phex_nz (read_register (regno), 0));
   puts_e7000debug (buf);
 }

      else if (regno == PR_REGNUM)
 {
   sprintf (buf, ".PR %s\r", phex_nz (read_register (regno), 0));
   puts_e7000debug (buf);
 }

      else if (regno == GBR_REGNUM)
 {
   sprintf (buf, ".GBR %s\r", phex_nz (read_register (regno), 0));
   puts_e7000debug (buf);
 }

      else if (regno == VBR_REGNUM)
 {
   sprintf (buf, ".VBR %s\r", phex_nz (read_register (regno), 0));
   puts_e7000debug (buf);
 }

      else if (regno == MACH_REGNUM)
 {
   sprintf (buf, ".MACH %s\r", phex_nz (read_register (regno), 0));
   puts_e7000debug (buf);
 }

      else if (regno == MACL_REGNUM)
 {
   sprintf (buf, ".MACL %s\r", phex_nz (read_register (regno), 0));
   puts_e7000debug (buf);
 }
      else
 {
   sprintf (buf, ".R%d %s\r", regno, phex_nz (read_register (regno), 0));
   puts_e7000debug (buf);
 }
    }

  expect_prompt ();
}
