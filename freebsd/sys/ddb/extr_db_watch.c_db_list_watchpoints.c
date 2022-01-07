
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* db_watchpoint_t ;
struct TYPE_2__ {scalar_t__ loaddr; scalar_t__ hiaddr; scalar_t__ map; struct TYPE_2__* link; } ;


 scalar_t__ db_map_current (scalar_t__) ;
 int db_printf (char*,...) ;
 scalar_t__ db_watchpoint_list ;

__attribute__((used)) static void
db_list_watchpoints(void)
{
 db_watchpoint_t watch;

 if (db_watchpoint_list == 0) {
     db_printf("No watchpoints set\n");
     return;
 }


 db_printf(" Map                Address          Size\n");



 for (watch = db_watchpoint_list;
      watch != 0;
      watch = watch->link)

     db_printf("%s%16p  %16lx  %lx\n",



        db_map_current(watch->map) ? "*" : " ",
        (void *)watch->map, (long)watch->loaddr,
        (long)watch->hiaddr - (long)watch->loaddr);
}
