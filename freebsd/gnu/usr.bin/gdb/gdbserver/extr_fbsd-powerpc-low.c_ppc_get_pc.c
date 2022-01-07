
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int collect_register_by_name (char*,unsigned long*) ;

__attribute__((used)) static CORE_ADDR
ppc_get_pc (void)
{
  unsigned long pc;

  collect_register_by_name ("pc", &pc);
  return (CORE_ADDR) pc;
}
