
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_event_base {int dummy; } ;
struct event_base {int dummy; } ;
struct ev_loop {int dummy; } ;


 struct event_base* AS_EVENT_BASE (struct ub_event_base*) ;
 int EVFLAG_AUTO ;
 int ev_backend (struct ev_loop*) ;
 scalar_t__ ev_default_loop (int ) ;
 int event_base_free (struct event_base*) ;
 char* event_base_get_method (struct event_base*) ;
 struct event_base* event_base_new () ;
 char* event_get_version () ;
 char* ub_ev_backend2str (int ) ;

void
ub_get_event_sys(struct ub_event_base* base, const char** n, const char** s,
 const char** m)
{
 struct event_base* b = AS_EVENT_BASE(base);
 *s = event_get_version();
 *n = "unknown";
 *m = "not obtainable";
 (void)b;






}
