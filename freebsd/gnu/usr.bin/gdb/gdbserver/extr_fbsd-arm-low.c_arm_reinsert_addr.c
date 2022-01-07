
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long CORE_ADDR ;


 int collect_register_by_name (char*,unsigned long*) ;

__attribute__((used)) static CORE_ADDR
arm_reinsert_addr ()
{
  unsigned long pc;
  collect_register_by_name ("lr", &pc);
  return pc;
}
