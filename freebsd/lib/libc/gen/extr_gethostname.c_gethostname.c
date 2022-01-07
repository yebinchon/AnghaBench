
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CTL_KERN ;
 scalar_t__ ENAMETOOLONG ;
 scalar_t__ ENOMEM ;
 int KERN_HOSTNAME ;
 scalar_t__ errno ;
 int sysctl (int*,int,char*,size_t*,int *,int ) ;

int
gethostname(char *name, size_t namelen)
{
 int mib[2];

 mib[0] = CTL_KERN;
 mib[1] = KERN_HOSTNAME;
 if (sysctl(mib, 2, name, &namelen, ((void*)0), 0) == -1) {
  if (errno == ENOMEM)
   errno = ENAMETOOLONG;
  return (-1);
 }
 return (0);
}
