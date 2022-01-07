
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int enable_thread_event_reporting () ;
 int fbsd_thread_active ;
 scalar_t__ fbsd_thread_core ;
 int fbsd_thread_find_new_threads () ;
 int get_current_thread () ;
 int init_thread_list () ;

__attribute__((used)) static void
fbsd_thread_activate (void)
{
  fbsd_thread_active = 1;
  init_thread_list();
  if (fbsd_thread_core == 0)
    enable_thread_event_reporting ();
  fbsd_thread_find_new_threads ();
  get_current_thread ();
}
