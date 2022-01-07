
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_callback {int dummy; } ;
struct event {struct event_callback ev_evcallback; } ;



__attribute__((used)) static inline struct event_callback *
event_to_event_callback(struct event *ev)
{
 return &ev->ev_evcallback;
}
