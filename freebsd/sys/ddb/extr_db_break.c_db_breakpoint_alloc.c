
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* db_breakpoint_t ;
struct TYPE_6__ {struct TYPE_6__* link; } ;


 size_t NBREAKPOINTS ;
 TYPE_1__* db_break_table ;
 TYPE_1__* db_free_breakpoints ;
 TYPE_1__* db_next_free_breakpoint ;
 int db_printf (char*) ;

__attribute__((used)) static db_breakpoint_t
db_breakpoint_alloc(void)
{
 register db_breakpoint_t bkpt;

 if ((bkpt = db_free_breakpoints) != 0) {
     db_free_breakpoints = bkpt->link;
     return (bkpt);
 }
 if (db_next_free_breakpoint == &db_break_table[NBREAKPOINTS]) {
     db_printf("All breakpoints used.\n");
     return (0);
 }
 bkpt = db_next_free_breakpoint;
 db_next_free_breakpoint++;

 return (bkpt);
}
