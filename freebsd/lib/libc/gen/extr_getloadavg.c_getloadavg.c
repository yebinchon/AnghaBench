
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loadavg {double fscale; scalar_t__* ldavg; } ;
typedef int loadinfo ;
typedef int fixpt_t ;


 int CTL_VM ;
 int MIN (int,int) ;
 int VM_LOADAVG ;
 scalar_t__ sysctl (int*,int,struct loadavg*,size_t*,int *,int ) ;

int
getloadavg(double loadavg[], int nelem)
{
 struct loadavg loadinfo;
 int i, mib[2];
 size_t size;

 mib[0] = CTL_VM;
 mib[1] = VM_LOADAVG;
 size = sizeof(loadinfo);
 if (sysctl(mib, 2, &loadinfo, &size, ((void*)0), 0) < 0)
  return (-1);

 nelem = MIN(nelem, sizeof(loadinfo.ldavg) / sizeof(fixpt_t));
 for (i = 0; i < nelem; i++)
  loadavg[i] = (double) loadinfo.ldavg[i] / loadinfo.fscale;
 return (nelem);
}
