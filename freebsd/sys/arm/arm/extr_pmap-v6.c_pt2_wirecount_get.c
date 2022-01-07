
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
typedef size_t uint32_t ;
struct TYPE_4__ {size_t* pt2_wirecount; } ;
struct TYPE_5__ {TYPE_1__ md; } ;


 size_t PT2PG_MASK ;

__attribute__((used)) static __inline uint32_t
pt2_wirecount_get(vm_page_t m, uint32_t pte1_idx)
{

 return (m->md.pt2_wirecount[pte1_idx & PT2PG_MASK]);
}
