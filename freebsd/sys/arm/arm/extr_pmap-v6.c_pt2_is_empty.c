
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
typedef int vm_offset_t ;
typedef int boolean_t ;
struct TYPE_4__ {scalar_t__* pt2_wirecount; } ;
struct TYPE_5__ {TYPE_1__ md; } ;


 size_t PT2PG_MASK ;
 size_t pte1_index (int ) ;

__attribute__((used)) static __inline boolean_t
pt2_is_empty(vm_page_t m, vm_offset_t va)
{

 return (m->md.pt2_wirecount[pte1_index(va) & PT2PG_MASK] == 0);
}
