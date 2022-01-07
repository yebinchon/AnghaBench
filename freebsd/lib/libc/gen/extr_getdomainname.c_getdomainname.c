
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CTL_KERN ;
 int KERN_NISDOMAINNAME ;
 int sysctl (int*,int,char*,size_t*,int *,int ) ;

int
getdomainname(char *name, int namelen)
{
 int mib[2];
 size_t size;

 mib[0] = CTL_KERN;
 mib[1] = KERN_NISDOMAINNAME;
 size = namelen;
 if (sysctl(mib, 2, name, &size, ((void*)0), 0) == -1)
  return (-1);
 return (0);
}
