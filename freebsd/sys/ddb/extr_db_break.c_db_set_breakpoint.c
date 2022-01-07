
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_map_t ;
typedef TYPE_1__* db_breakpoint_t ;
typedef int db_addr_t ;
struct TYPE_4__ {int init_count; int count; struct TYPE_4__* link; scalar_t__ flags; int address; int map; } ;


 TYPE_1__* db_breakpoint_alloc () ;
 TYPE_1__* db_breakpoint_list ;
 scalar_t__ db_find_breakpoint (int ,int ) ;
 int db_printf (char*) ;

__attribute__((used)) static void
db_set_breakpoint(vm_map_t map, db_addr_t addr, int count)
{
 register db_breakpoint_t bkpt;

 if (db_find_breakpoint(map, addr)) {
     db_printf("Already set.\n");
     return;
 }

 bkpt = db_breakpoint_alloc();
 if (bkpt == 0) {
     db_printf("Too many breakpoints.\n");
     return;
 }

 bkpt->map = map;
 bkpt->address = addr;
 bkpt->flags = 0;
 bkpt->init_count = count;
 bkpt->count = count;

 bkpt->link = db_breakpoint_list;
 db_breakpoint_list = bkpt;
}
