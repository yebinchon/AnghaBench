
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct breakpoint {void (* handler ) (int ) ;struct breakpoint* next; int pc; int old_data; } ;
struct TYPE_2__ {int (* write_memory ) (int ,int *,int ) ;int (* read_memory ) (int ,int ,int ) ;} ;
typedef int CORE_ADDR ;


 int * breakpoint_data ;
 int breakpoint_len ;
 struct breakpoint* breakpoints ;
 int error (char*) ;
 struct breakpoint* malloc (int) ;
 int memset (struct breakpoint*,int ,int) ;
 int stub1 (int ,int ,int ) ;
 int stub2 (int ,int *,int ) ;
 TYPE_1__* the_target ;

void
set_breakpoint_at (CORE_ADDR where, void (*handler) (CORE_ADDR))
{
  struct breakpoint *bp;

  if (breakpoint_data == ((void*)0))
    error ("Target does not support breakpoints.");

  bp = malloc (sizeof (struct breakpoint));
  memset (bp, 0, sizeof (struct breakpoint));

  (*the_target->read_memory) (where, bp->old_data,
         breakpoint_len);
  (*the_target->write_memory) (where, breakpoint_data,
          breakpoint_len);

  bp->pc = where;
  bp->handler = handler;

  bp->next = breakpoints;
  breakpoints = bp;
}
