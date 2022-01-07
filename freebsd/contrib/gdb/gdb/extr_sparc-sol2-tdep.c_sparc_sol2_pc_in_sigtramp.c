
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 scalar_t__ strcmp (char*,char*) ;

int
sparc_sol2_pc_in_sigtramp (CORE_ADDR pc, char *name)
{
  return (name && (strcmp (name, "sigacthandler") == 0
     || strcmp (name, "ucbsigvechandler") == 0));
}
