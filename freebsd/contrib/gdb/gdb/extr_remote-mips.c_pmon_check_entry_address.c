
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mips_expect (char*) ;
 int mips_expect_timeout (char*,int) ;
 int remote_timeout ;
 int sprintf (char*,char*,int) ;
 scalar_t__ tftp_in_use ;

__attribute__((used)) static void
pmon_check_entry_address (char *entry_address, int final)
{
  char hexnumber[9];
  mips_expect_timeout (entry_address, tftp_in_use ? 15 : remote_timeout);
  sprintf (hexnumber, "%x", final);
  mips_expect (hexnumber);
  mips_expect ("\r\n");
}
