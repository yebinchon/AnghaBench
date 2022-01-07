
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int n ;


 int CTL_KERN ;
 int KERN_PROC ;
 int KERN_PROC_NFDS ;
 int nitems (int*) ;
 int sysctl (int*,int ,int*,size_t*,int *,int ) ;

__attribute__((used)) static int
nopenfds(void)
{
 size_t len;
 int error, mib[4], n;

 mib[0] = CTL_KERN;
 mib[1] = KERN_PROC;
 mib[2] = KERN_PROC_NFDS;
 mib[3] = 0;

 len = sizeof(n);
 error = sysctl(mib, nitems(mib), &n, &len, ((void*)0), 0);
 if (error != 0)
  return (-1);
 return (n);
}
