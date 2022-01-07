
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int td_thragent_t ;
struct TYPE_4__ {scalar_t__ bptaddr; } ;
struct TYPE_5__ {TYPE_1__ u; } ;
typedef TYPE_2__ td_notify_t ;
typedef scalar_t__ td_err_e ;
typedef int CORE_ADDR ;


 scalar_t__ TD_OK ;
 int create_thread_event_breakpoint (int ) ;
 int current_gdbarch ;
 int current_target ;
 int gdbarch_convert_from_func_ptr_addr (int ,int ,int *) ;
 scalar_t__ td_ta_event_addr_p (int *,int,TYPE_2__*) ;

__attribute__((used)) static td_err_e
enable_thread_event (td_thragent_t *thread_agent, int event, CORE_ADDR *bp)
{
  td_notify_t notify;
  td_err_e err;


  err = td_ta_event_addr_p (thread_agent, event, &notify);
  if (err != TD_OK)
    return err;


  (*bp) = gdbarch_convert_from_func_ptr_addr (current_gdbarch,
           (CORE_ADDR) notify.u.bptaddr,
           &current_target);
  create_thread_event_breakpoint ((*bp));

  return TD_OK;
}
