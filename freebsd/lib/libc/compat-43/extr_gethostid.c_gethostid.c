
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CTL_KERN ;
 int KERN_HOSTID ;
 int sysctl (int*,int,long*,size_t*,int *,int ) ;

long
gethostid(void)
{
 int mib[2];
 size_t size;
 long value;

 mib[0] = CTL_KERN;
 mib[1] = KERN_HOSTID;
 size = sizeof value;
 if (sysctl(mib, 2, &value, &size, ((void*)0), 0) == -1)
  return (-1);
 return (value);
}
