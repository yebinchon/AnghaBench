
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_map_t ;
typedef TYPE_1__* db_watchpoint_t ;
typedef scalar_t__ db_addr_t ;
struct TYPE_4__ {scalar_t__ loaddr; scalar_t__ hiaddr; struct TYPE_4__* link; int map; } ;


 scalar_t__ db_map_equal (int ,int ) ;
 int db_printf (char*) ;
 int db_watchpoint_free (TYPE_1__*) ;
 TYPE_1__* db_watchpoint_list ;

__attribute__((used)) static void
db_delete_watchpoint(vm_map_t map, db_addr_t addr)
{
 db_watchpoint_t watch;
 db_watchpoint_t *prev;

 for (prev = &db_watchpoint_list;
      (watch = *prev) != 0;
      prev = &watch->link)
     if (db_map_equal(watch->map, map) &&
  (watch->loaddr <= addr) &&
  (addr < watch->hiaddr)) {
  *prev = watch->link;
  db_watchpoint_free(watch);
  return;
     }

 db_printf("Not set.\n");
}
