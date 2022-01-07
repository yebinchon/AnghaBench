
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int files; } ;


 scalar_t__ V_WARNING ;
 scalar_t__ message_verbosity_get () ;
 scalar_t__ opt_robot ;
 int print_totals_adv () ;
 int print_totals_basic () ;
 int print_totals_robot () ;
 TYPE_1__ totals ;

extern void
list_totals(void)
{
 if (opt_robot) {



  print_totals_robot();

 } else if (totals.files > 1) {


  if (message_verbosity_get() <= V_WARNING)
   print_totals_basic();
  else
   print_totals_adv();
 }

 return;
}
