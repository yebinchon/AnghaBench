
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int BREAK_FETCH ;
 int MIPS_INSTLEN ;
 int memory_insert_breakpoint (int ,char*) ;
 scalar_t__ monitor_supports_breakpoints ;
 int set_breakpoint (int ,int ,int ) ;

__attribute__((used)) static int
mips_insert_breakpoint (CORE_ADDR addr, char *contents_cache)
{
  if (monitor_supports_breakpoints)
    return set_breakpoint (addr, MIPS_INSTLEN, BREAK_FETCH);
  else
    return memory_insert_breakpoint (addr, contents_cache);
}
