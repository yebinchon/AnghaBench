
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int execprot ;


 int NOTIMPL ;
 int NO_XP ;
 int PERPAGE_XP ;
 scalar_t__ sysctlbyname (char*,int*,size_t*,int *,int ) ;

int
exec_prot_support(void)
{
 int execprot = 0;
 size_t len = sizeof(execprot);

 if (sysctlbyname("machdep.execprot", &execprot, &len, ((void*)0), 0) < 0)
  return NOTIMPL;

 if (execprot)
  return PERPAGE_XP;

 return NO_XP;
}
