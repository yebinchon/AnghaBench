
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int breakpoint_len; int breakpoint; } ;


 int fbsd_init_signals () ;
 int fbsd_target_ops ;
 int init_registers () ;
 int set_breakpoint_data (int ,int ) ;
 int set_target_ops (int *) ;
 TYPE_1__ the_low_target ;
 scalar_t__ using_threads ;

void
initialize_low (void)
{
  using_threads = 0;
  set_target_ops (&fbsd_target_ops);
  set_breakpoint_data (the_low_target.breakpoint,
         the_low_target.breakpoint_len);
  init_registers ();
  fbsd_init_signals ();
}
