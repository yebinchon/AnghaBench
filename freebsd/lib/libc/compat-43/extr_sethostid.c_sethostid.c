
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CTL_KERN ;
 int KERN_HOSTID ;
 int sysctl (int*,int,int *,int *,long*,int) ;

void
sethostid(long hostid)
{
 int mib[2];

 mib[0] = CTL_KERN;
 mib[1] = KERN_HOSTID;
 sysctl(mib, 2, ((void*)0), ((void*)0), &hostid, sizeof hostid);
}
