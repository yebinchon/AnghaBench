
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CORE_ADDR ;


 scalar_t__ debug_threads ;
 int fprintf (int ,char*,long) ;
 int stderr ;
 int supply_register_by_name (char*,scalar_t__*) ;

__attribute__((used)) static void
amd64_set_pc(CORE_ADDR newpc)
{

 if (debug_threads)
  fprintf(stderr, "set pc to %016lx\n", (long)newpc);
 supply_register_by_name("rip", &newpc);
}
