
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CORE_ADDR ;


 int MAX_STDEBUG_BREAKPOINTS ;
 scalar_t__* breakaddr ;
 int expect_prompt (int) ;
 int fprintf_unfiltered (int ,char*,scalar_t__) ;
 int gdb_stderr ;
 int printf_stdebug (char*,int) ;

__attribute__((used)) static int
st2000_remove_breakpoint (CORE_ADDR addr, char *shadow)
{
  int i;

  for (i = 0; i < MAX_STDEBUG_BREAKPOINTS; i++)
    if (breakaddr[i] == addr)
      {
 breakaddr[i] = 0;

 printf_stdebug ("CB %d\r", i);
 expect_prompt (1);
 return 0;
      }

  fprintf_unfiltered (gdb_stderr,
        "Can't find breakpoint associated with 0x%x\n", addr);
  return 1;
}
