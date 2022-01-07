
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CORE_ADDR ;


 scalar_t__ BC_BREAKPOINTS ;
 int MAX_E7000DEBUG_BREAKPOINTS ;
 scalar_t__* breakaddr ;
 int e7000_write_inferior_memory (scalar_t__,char*,int) ;
 int expect_prompt () ;
 char* paddr_nz (scalar_t__) ;
 int puts_e7000debug (char*) ;
 int sprintf (char*,char*,...) ;
 int warning (char*,char*) ;

__attribute__((used)) static int
e7000_remove_breakpoint (CORE_ADDR addr, char *shadow)
{
  int i;
  char buf[200];

  for (i = 0; i < MAX_E7000DEBUG_BREAKPOINTS; i++)
    if (breakaddr[i] == addr)
      {
 breakaddr[i] = 0;
 sprintf (buf, "B - %s\r", paddr_nz (addr));
 puts_e7000debug (buf);
 expect_prompt ();







 return 0;
      }

  warning ("Can't find breakpoint associated with 0x%s\n", paddr_nz (addr));
  return 1;
}
