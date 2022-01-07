
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int build_func; scalar_t__ trap_name; } ;


 int ibdiag_show_usage () ;
 int send_trap (int ) ;
 scalar_t__ strcmp (scalar_t__,char*) ;
 TYPE_1__* traps ;

int process_send_trap(char *trap_name)
{
 int i;

 for (i = 0; traps[i].trap_name; i++)
  if (strcmp(traps[i].trap_name, trap_name) == 0)
   return send_trap(traps[i].build_func);
 ibdiag_show_usage();
 return 1;
}
