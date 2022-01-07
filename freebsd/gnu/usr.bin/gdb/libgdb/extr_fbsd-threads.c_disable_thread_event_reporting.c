
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int td_thr_events_t ;


 int remove_thread_event_breakpoints () ;
 scalar_t__ td_create_bp_addr ;
 scalar_t__ td_death_bp_addr ;
 int td_event_emptyset (int *) ;
 int td_ta_set_event_p (int ,int *) ;
 int thread_agent ;

__attribute__((used)) static void
disable_thread_event_reporting (void)
{
  td_thr_events_t events;



  td_event_emptyset (&events);
  td_ta_set_event_p (thread_agent, &events);


  remove_thread_event_breakpoints ();
  td_create_bp_addr = 0;
  td_death_bp_addr = 0;
}
