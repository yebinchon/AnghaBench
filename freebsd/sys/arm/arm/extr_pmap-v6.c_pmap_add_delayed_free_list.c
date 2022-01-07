
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
struct spglist {int dummy; } ;
struct TYPE_7__ {int ss; } ;
struct TYPE_9__ {TYPE_1__ s; } ;
struct TYPE_8__ {int flags; } ;


 int PG_ZERO ;
 int SLIST_INSERT_HEAD (struct spglist*,TYPE_2__*,int ) ;
 TYPE_5__ plinks ;
 int pmap_zero_page_check (TYPE_2__*) ;

__attribute__((used)) static __inline void
pmap_add_delayed_free_list(vm_page_t m, struct spglist *free)
{
 m->flags |= PG_ZERO;
 SLIST_INSERT_HEAD(free, m, plinks.s.ss);
}
