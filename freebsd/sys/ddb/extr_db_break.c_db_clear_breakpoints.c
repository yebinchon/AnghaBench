
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* db_breakpoint_t ;
struct TYPE_3__ {int bkpt_inst; int address; int map; struct TYPE_3__* link; } ;


 int BKPT_CLEAR (int ,int *) ;
 TYPE_1__* db_breakpoint_list ;
 int db_breakpoints_inserted ;
 scalar_t__ db_map_current (int ) ;

void
db_clear_breakpoints(void)
{
 register db_breakpoint_t bkpt;

 if (db_breakpoints_inserted) {

  for (bkpt = db_breakpoint_list;
       bkpt != 0;
       bkpt = bkpt->link)
   if (db_map_current(bkpt->map)) {
    BKPT_CLEAR(bkpt->address, &bkpt->bkpt_inst);
   }
  db_breakpoints_inserted = 0;
 }
}
