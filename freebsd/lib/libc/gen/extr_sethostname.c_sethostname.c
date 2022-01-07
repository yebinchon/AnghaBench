
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CTL_KERN ;
 int KERN_HOSTNAME ;
 int sysctl (int*,int,int *,int *,void*,int) ;

int
sethostname(const char *name, int namelen)
{
 int mib[2];

 mib[0] = CTL_KERN;
 mib[1] = KERN_HOSTNAME;
 if (sysctl(mib, 2, ((void*)0), ((void*)0), (void *)name, namelen) == -1)
  return (-1);
 return (0);
}
