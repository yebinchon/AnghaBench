
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
typedef int vm_memattr_t ;
struct TYPE_4__ {scalar_t__ pv_kva; int pv_list; int pv_memattr; } ;
struct TYPE_5__ {TYPE_1__ md; } ;


 int * TAILQ_FIRST (int *) ;
 int panic (char*) ;

void
pmap_page_set_memattr(vm_page_t m, vm_memattr_t ma)
{




 m->md.pv_memattr = ma;
 if (m->md.pv_kva != 0 || TAILQ_FIRST(&m->md.pv_list) != ((void*)0))
  panic("Can't change memattr on page with existing mappings");
}
