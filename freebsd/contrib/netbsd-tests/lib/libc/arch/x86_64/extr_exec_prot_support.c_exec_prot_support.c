
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NO_XP ;
 int PERPAGE_XP ;
 scalar_t__ system (char*) ;

int
exec_prot_support(void)
{
 if (system("cpuctl identify 0 | grep -q NOX") == 0 ||
     system("cpuctl identify 0 | grep -q XD") == 0)
  return PERPAGE_XP;

 return NO_XP;
}
