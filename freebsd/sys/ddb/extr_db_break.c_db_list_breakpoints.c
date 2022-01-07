
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* db_breakpoint_t ;
struct TYPE_2__ {int address; int init_count; scalar_t__ map; struct TYPE_2__* link; } ;


 int DB_STGY_PROC ;
 scalar_t__ db_breakpoint_list ;
 scalar_t__ db_map_current (scalar_t__) ;
 int db_printf (char*,...) ;
 int db_printsym (int ,int ) ;

__attribute__((used)) static void
db_list_breakpoints(void)
{
 register db_breakpoint_t bkpt;

 if (db_breakpoint_list == 0) {
     db_printf("No breakpoints set\n");
     return;
 }

 db_printf(" Map      Count    Address\n");
 for (bkpt = db_breakpoint_list;
      bkpt != 0;
      bkpt = bkpt->link) {
     db_printf("%s%8p %5d    ",
        db_map_current(bkpt->map) ? "*" : " ",
        (void *)bkpt->map, bkpt->init_count);
     db_printsym(bkpt->address, DB_STGY_PROC);
     db_printf("\n");
 }
}
