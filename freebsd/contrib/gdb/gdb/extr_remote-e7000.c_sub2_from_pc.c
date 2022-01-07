
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEPRECATED_REGISTER_RAW_SIZE (int ) ;
 int PC_REGNUM ;
 char* phex_nz (scalar_t__,int ) ;
 int puts_e7000debug (char*) ;
 scalar_t__ read_register (int ) ;
 int sprintf (char*,char*,char*) ;
 int store_signed_integer (char*,int ,scalar_t__) ;
 int supply_register (int ,char*) ;

__attribute__((used)) static void
sub2_from_pc (void)
{
  char buf[4];
  char buf2[200];

  store_signed_integer (buf,
   DEPRECATED_REGISTER_RAW_SIZE (PC_REGNUM),
   read_register (PC_REGNUM) - 2);
  supply_register (PC_REGNUM, buf);
  sprintf (buf2, ".PC %s\r", phex_nz (read_register (PC_REGNUM), 0));
  puts_e7000debug (buf2);
}
