
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int event_disable_debug_mode () ;
 int event_free_globals () ;

void
libevent_global_shutdown(void)
{
 event_disable_debug_mode();
 event_free_globals();
}
