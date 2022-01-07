
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gid_t ;


 int __getgroupmembership (char const*,int ,int *,int,int*) ;

int
getgrouplist(const char *uname, gid_t agroup, gid_t *groups, int *grpcnt)
{
 return __getgroupmembership(uname, agroup, groups, *grpcnt, grpcnt);
}
