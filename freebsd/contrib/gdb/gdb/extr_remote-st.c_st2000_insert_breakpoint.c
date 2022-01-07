
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CORE_ADDR ;


 int BREAKPOINT_FROM_PC (scalar_t__*,int*) ;
 int MAX_STDEBUG_BREAKPOINTS ;
 scalar_t__* breakaddr ;
 int expect_prompt (int) ;
 int fprintf_unfiltered (int ,char*) ;
 int gdb_stderr ;
 int printf_stdebug (char*,scalar_t__) ;
 int st2000_read_inferior_memory (scalar_t__,char*,int) ;

__attribute__((used)) static int
st2000_insert_breakpoint (CORE_ADDR addr, char *shadow)
{
  int i;
  CORE_ADDR bp_addr = addr;
  int bp_size = 0;

  BREAKPOINT_FROM_PC (&bp_addr, &bp_size);

  for (i = 0; i <= MAX_STDEBUG_BREAKPOINTS; i++)
    if (breakaddr[i] == 0)
      {
 breakaddr[i] = addr;

 st2000_read_inferior_memory (bp_addr, shadow, bp_size);
 printf_stdebug ("BR %x H\r", addr);
 expect_prompt (1);
 return 0;
      }

  fprintf_unfiltered (gdb_stderr, "Too many breakpoints (> 16) for STDBUG\n");
  return 1;
}
