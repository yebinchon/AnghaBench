
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int dummy; } ;
struct event {int dummy; } ;
typedef int evutil_socket_t ;


 scalar_t__ event_assign (struct event*,struct event_base*,int ,short,void (*) (int ,short,void*),void*) ;
 int mm_free (struct event*) ;
 struct event* mm_malloc (int) ;

struct event *
event_new(struct event_base *base, evutil_socket_t fd, short events, void (*cb)(evutil_socket_t, short, void *), void *arg)
{
 struct event *ev;
 ev = mm_malloc(sizeof(struct event));
 if (ev == ((void*)0))
  return (((void*)0));
 if (event_assign(ev, base, fd, events, cb, arg) < 0) {
  mm_free(ev);
  return (((void*)0));
 }

 return (ev);
}
