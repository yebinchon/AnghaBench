
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
struct TYPE_4__ {scalar_t__ pv_kva; scalar_t__ pvh_attrs; int pv_memattr; int pv_list; } ;
struct TYPE_5__ {TYPE_1__ md; } ;


 int TAILQ_INIT (int *) ;
 int VM_MEMATTR_DEFAULT ;

void
pmap_page_init(vm_page_t m)
{

 TAILQ_INIT(&m->md.pv_list);
 m->md.pv_memattr = VM_MEMATTR_DEFAULT;
 m->md.pvh_attrs = 0;
 m->md.pv_kva = 0;
}
