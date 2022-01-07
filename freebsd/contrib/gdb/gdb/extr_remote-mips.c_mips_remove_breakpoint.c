
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int BREAK_FETCH ;
 int MIPS_INSTLEN ;
 int clear_breakpoint (int ,int ,int ) ;
 int memory_remove_breakpoint (int ,char*) ;
 scalar_t__ monitor_supports_breakpoints ;

__attribute__((used)) static int
mips_remove_breakpoint (CORE_ADDR addr, char *contents_cache)
{
  if (monitor_supports_breakpoints)
    return clear_breakpoint (addr, MIPS_INSTLEN, BREAK_FETCH);
  else
    return memory_remove_breakpoint (addr, contents_cache);
}
