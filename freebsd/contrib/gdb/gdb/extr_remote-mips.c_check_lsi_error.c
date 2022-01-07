
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lsi_error {int code; int string; } ;
typedef int CORE_ADDR ;


 int W_WARN ;
 int fprintf_unfiltered (int ,char*,char*,int) ;
 int gdb_stderr ;
 struct lsi_error* lsi_error_table ;
 struct lsi_error* lsi_warning_table ;
 scalar_t__ monitor_warnings ;
 char* paddr_nz (int ) ;

__attribute__((used)) static int
check_lsi_error (CORE_ADDR addr, int rerrflg)
{
  struct lsi_error *err;
  char *saddr = paddr_nz (addr);

  if (rerrflg == 0)
    return 0;


  if (rerrflg & W_WARN)
    {
      if (monitor_warnings)
 {
   int found = 0;
   for (err = lsi_warning_table; err->code != 0; err++)
     {
       if ((err->code & rerrflg) == err->code)
  {
    found = 1;
    fprintf_unfiltered (gdb_stderr,
      "common_breakpoint (0x%s): Warning: %s\n",
          saddr,
          err->string);
  }
     }
   if (!found)
     fprintf_unfiltered (gdb_stderr,
   "common_breakpoint (0x%s): Unknown warning: 0x%x\n",
    saddr,
    rerrflg);
 }
      return 0;
    }


  for (err = lsi_error_table; err->code != 0; err++)
    {
      if ((err->code & rerrflg) == err->code)
 {
   fprintf_unfiltered (gdb_stderr,
         "common_breakpoint (0x%s): Error: %s\n",
         saddr,
         err->string);
   return 1;
 }
    }
  fprintf_unfiltered (gdb_stderr,
        "common_breakpoint (0x%s): Unknown error: 0x%x\n",
        saddr,
        rerrflg);
  return 1;
}
