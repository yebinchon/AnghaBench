
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nfds ;


 int CTL_KERN ;
 int KERN_PROC ;
 int KERN_PROC_NFDS ;
 int sysctl (int*,int,int*,size_t*,int *,int ) ;

int
getdtablecount(void)
{
 int mib[4];
 int error;
 int nfds;
 size_t len;

 len = sizeof(nfds);
 mib[0] = CTL_KERN;
 mib[1] = KERN_PROC;
 mib[2] = KERN_PROC_NFDS;
 mib[3] = 0;

 error = sysctl(mib, 4, &nfds, &len, ((void*)0), 0);
 if (error)
  return (-1);
 return (nfds);
}
