
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ stepping; } ;
struct TYPE_3__ {scalar_t__ decr_pc_after_break; scalar_t__ (* get_pc ) () ;} ;
typedef scalar_t__ CORE_ADDR ;


 int current_inferior ;
 TYPE_2__* get_thread_process (int ) ;
 scalar_t__ stub1 () ;
 TYPE_1__ the_low_target ;

__attribute__((used)) static CORE_ADDR
get_stop_pc (void)
{
  CORE_ADDR stop_pc = (*the_low_target.get_pc) ();

  if (get_thread_process (current_inferior)->stepping)
    return stop_pc;
  else
    return stop_pc - the_low_target.decr_pc_after_break;
}
