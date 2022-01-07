
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
typedef size_t u_int ;
struct TYPE_4__ {scalar_t__* pt2_wirecount; } ;
struct TYPE_5__ {TYPE_1__ md; } ;


 size_t NPT2_IN_PG ;

__attribute__((used)) static __inline void
pt2_wirecount_init(vm_page_t m)
{
 u_int i;






 for (i = 0; i < NPT2_IN_PG; i++)
  m->md.pt2_wirecount[i] = 0;
}
