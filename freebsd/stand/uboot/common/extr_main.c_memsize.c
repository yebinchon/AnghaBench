
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct sys_info {int mr_no; TYPE_1__* mr; } ;
struct TYPE_2__ {int flags; scalar_t__ size; } ;



__attribute__((used)) static uint64_t
memsize(struct sys_info *si, int flags)
{
 uint64_t size;
 int i;

 size = 0;
 for (i = 0; i < si->mr_no; i++)
  if (si->mr[i].flags == flags && si->mr[i].size)
   size += (si->mr[i].size);

 return (size);
}
