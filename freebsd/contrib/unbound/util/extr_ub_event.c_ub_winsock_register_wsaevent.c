
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_event_base {int dummy; } ;
struct ub_event {int dummy; } ;
struct event {int dummy; } ;


 int AS_EVENT_BASE (struct ub_event_base*) ;
 struct ub_event* AS_UB_EVENT (struct event*) ;
 scalar_t__ calloc (int,int) ;
 int free (struct event*) ;
 scalar_t__ winsock_register_wsaevent (int ,struct event*,void*,void (*) (int,short,void*),void*) ;

struct ub_event*
ub_winsock_register_wsaevent(struct ub_event_base* base, void* wsaevent,
 void (*cb)(int, short, void*), void* arg)
{
 (void)base;
 (void)wsaevent;
 (void)cb;
 (void)arg;
 return ((void*)0);

}
