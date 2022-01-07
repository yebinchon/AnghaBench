
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mips_expect (char*) ;
 int mips_expect_download (char*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static int
pmon_check_total (int bintotal)
{
  char hexnumber[9];
  mips_expect ("\r\ntotal = 0x");
  sprintf (hexnumber, "%x", bintotal);
  mips_expect (hexnumber);
  return mips_expect_download (" bytes\r\n");
}
