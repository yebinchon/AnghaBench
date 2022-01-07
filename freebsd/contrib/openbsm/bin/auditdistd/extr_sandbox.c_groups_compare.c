
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ gid_t ;



__attribute__((used)) static int
groups_compare(const void *grp0, const void *grp1)
{
 gid_t gr0 = *(const gid_t *)grp0;
 gid_t gr1 = *(const gid_t *)grp1;

 return (gr0 <= gr1 ? (gr0 < gr1 ? -1 : 0) : 1);

}
