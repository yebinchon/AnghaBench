
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_event_base {int dummy; } ;
struct event_base {int dummy; } ;
struct ev_loop {int dummy; } ;


 int assert (struct event_base*) ;
 int ev_backend (struct ev_loop*) ;
 char* event_base_get_method (struct event_base*) ;
 char* event_get_version () ;
 char* ub_ev_backend2str_pluggable (int ) ;
 struct event_base* ub_libevent_get_event_base (struct ub_event_base*) ;

void
ub_get_event_sys(struct ub_event_base* ub_base, const char** n, const char** s,
 const char** m)
{
 struct event_base* b = ub_libevent_get_event_base(ub_base);




 assert(b);
 *n = "pluggable-event";
 *s = event_get_version();
 *m = "not obtainable";


}
