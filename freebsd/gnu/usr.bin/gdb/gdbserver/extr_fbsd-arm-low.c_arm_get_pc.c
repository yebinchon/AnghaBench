
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long CORE_ADDR ;


 int collect_register_by_name (char*,unsigned long*) ;
 scalar_t__ debug_threads ;
 int fprintf (int ,char*,unsigned long) ;
 int stderr ;

__attribute__((used)) static CORE_ADDR
arm_get_pc ()
{
  unsigned long pc;
  collect_register_by_name ("pc", &pc);
  if (debug_threads)
    fprintf (stderr, "stop pc is %08lx\n", pc);
  return pc;
}
