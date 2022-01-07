
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CORE_ADDR ;


 int nbsd_pc_in_sigtramp (scalar_t__,char*) ;
 scalar_t__ sparc32nbsd_sigtramp_end ;
 scalar_t__ sparc32nbsd_sigtramp_start ;

__attribute__((used)) static int
sparc32nbsd_pc_in_sigtramp (CORE_ADDR pc, char *name)
{
  if (pc >= sparc32nbsd_sigtramp_start && pc < sparc32nbsd_sigtramp_end)
    return 1;

  return nbsd_pc_in_sigtramp (pc, name);
}
