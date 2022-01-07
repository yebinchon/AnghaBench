
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pae ;


 int PARTIAL_XP ;
 int PERPAGE_XP ;
 int sysctlbyname (char*,int*,size_t*,int *,int ) ;
 scalar_t__ system (char*) ;

int
exec_prot_support(void)
{
 int pae;
 size_t pae_len = sizeof(pae);

 if (sysctlbyname("machdep.pae", &pae, &pae_len, ((void*)0), 0) == -1)
  return PARTIAL_XP;

 if (pae == 1) {
  if (system("cpuctl identify 0 | grep -q NOX") == 0 ||
      system("cpuctl identify 0 | grep -q XD") == 0)
   return PERPAGE_XP;
 }

 return PARTIAL_XP;
}
