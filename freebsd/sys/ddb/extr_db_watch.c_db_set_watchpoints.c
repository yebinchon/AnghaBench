
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* db_watchpoint_t ;
struct TYPE_5__ {int hiaddr; int loaddr; TYPE_1__* map; struct TYPE_5__* link; } ;
struct TYPE_4__ {int pmap; } ;


 int VM_PROT_READ ;
 TYPE_2__* db_watchpoint_list ;
 int db_watchpoints_inserted ;
 int pmap_protect (int ,int ,int ,int ) ;
 int round_page (int ) ;
 int trunc_page (int ) ;

void
db_set_watchpoints(void)
{
 db_watchpoint_t watch;

 if (!db_watchpoints_inserted) {
     for (watch = db_watchpoint_list;
          watch != 0;
          watch = watch->link)
  pmap_protect(watch->map->pmap,
        trunc_page(watch->loaddr),
        round_page(watch->hiaddr),
        VM_PROT_READ);

     db_watchpoints_inserted = 1;
 }
}
