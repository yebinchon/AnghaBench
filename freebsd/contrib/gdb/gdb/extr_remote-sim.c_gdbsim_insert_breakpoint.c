
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int memory_insert_breakpoint (int ,char*) ;

__attribute__((used)) static int
gdbsim_insert_breakpoint (CORE_ADDR addr, char *contents_cache)
{
  return memory_insert_breakpoint (addr, contents_cache);
}
