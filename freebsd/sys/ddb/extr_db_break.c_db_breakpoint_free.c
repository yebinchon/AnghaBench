
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* db_breakpoint_t ;
struct TYPE_4__ {struct TYPE_4__* link; } ;


 TYPE_1__* db_free_breakpoints ;

__attribute__((used)) static void
db_breakpoint_free(db_breakpoint_t bkpt)
{
 bkpt->link = db_free_breakpoints;
 db_free_breakpoints = bkpt;
}
