
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ when; } ;


 TYPE_1__* tims ;

__attribute__((used)) static int
tim_cmp(const void *p1, const void *p2)
{
 int t1 = *(const int *)p1;
 int t2 = *(const int *)p2;

 return tims[t1].when < tims[t2].when ? -1
      : tims[t1].when > tims[t2].when ? +1
      : 0;
}
