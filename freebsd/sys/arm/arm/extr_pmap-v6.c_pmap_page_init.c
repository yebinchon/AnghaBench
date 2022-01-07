
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
struct TYPE_5__ {int pat_mode; int pv_list; } ;
struct TYPE_6__ {TYPE_1__ md; } ;


 int TAILQ_INIT (int *) ;
 int VM_MEMATTR_DEFAULT ;
 int pt2_wirecount_init (TYPE_2__*) ;

void
pmap_page_init(vm_page_t m)
{

 TAILQ_INIT(&m->md.pv_list);
 pt2_wirecount_init(m);
 m->md.pat_mode = VM_MEMATTR_DEFAULT;
}
