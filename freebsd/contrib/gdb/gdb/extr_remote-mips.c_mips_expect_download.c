
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf_unfiltered (int ,char*) ;
 int gdb_stderr ;
 int mips_expect (char*) ;
 int remove (int ) ;
 scalar_t__ tftp_in_use ;
 int tftp_localname ;

__attribute__((used)) static int
mips_expect_download (char *string)
{
  if (!mips_expect (string))
    {
      fprintf_unfiltered (gdb_stderr, "Load did not complete successfully.\n");
      if (tftp_in_use)
 remove (tftp_localname);
      return 0;
    }
  else
    return 1;
}
