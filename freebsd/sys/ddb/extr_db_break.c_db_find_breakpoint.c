
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_map_t ;
typedef TYPE_1__* db_breakpoint_t ;
typedef scalar_t__ db_addr_t ;
struct TYPE_4__ {scalar_t__ address; int map; struct TYPE_4__* link; } ;


 TYPE_1__* db_breakpoint_list ;
 scalar_t__ db_map_equal (int ,int ) ;

__attribute__((used)) static db_breakpoint_t
db_find_breakpoint(vm_map_t map, db_addr_t addr)
{
 register db_breakpoint_t bkpt;

 for (bkpt = db_breakpoint_list;
      bkpt != 0;
      bkpt = bkpt->link)
 {
     if (db_map_equal(bkpt->map, map) &&
  (bkpt->address == addr))
  return (bkpt);
 }
 return (0);
}
