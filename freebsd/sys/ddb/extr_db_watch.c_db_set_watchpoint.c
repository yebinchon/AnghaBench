
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ vm_size_t ;
typedef int * vm_map_t ;
typedef TYPE_1__* db_watchpoint_t ;
typedef scalar_t__ db_addr_t ;
struct TYPE_4__ {scalar_t__ loaddr; scalar_t__ hiaddr; struct TYPE_4__* link; int * map; } ;


 scalar_t__ db_map_equal (int *,int *) ;
 int db_printf (char*) ;
 TYPE_1__* db_watchpoint_alloc () ;
 TYPE_1__* db_watchpoint_list ;
 int db_watchpoints_inserted ;

__attribute__((used)) static void
db_set_watchpoint(vm_map_t map, db_addr_t addr, vm_size_t size)
{
 db_watchpoint_t watch;

 if (map == ((void*)0)) {
     db_printf("No map.\n");
     return;
 }





 for (watch = db_watchpoint_list;
      watch != 0;
      watch = watch->link)
     if (db_map_equal(watch->map, map) &&
  (watch->loaddr == addr) &&
  (watch->hiaddr == addr+size)) {
  db_printf("Already set.\n");
  return;
     }

 watch = db_watchpoint_alloc();
 if (watch == 0) {
     db_printf("Too many watchpoints.\n");
     return;
 }

 watch->map = map;
 watch->loaddr = addr;
 watch->hiaddr = addr+size;

 watch->link = db_watchpoint_list;
 db_watchpoint_list = watch;

 db_watchpoints_inserted = 0;
}
