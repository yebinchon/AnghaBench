
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* db_watchpoint_t ;
struct TYPE_4__ {struct TYPE_4__* link; } ;


 TYPE_1__* db_free_watchpoints ;

__attribute__((used)) static void
db_watchpoint_free(db_watchpoint_t watch)
{
 watch->link = db_free_watchpoints;
 db_free_watchpoints = watch;
}
