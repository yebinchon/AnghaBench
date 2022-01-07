
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evmap_foreach_event_helper {void* arg; int fn; } ;
struct event_base {int dummy; } ;
typedef int event_base_foreach_event_cb ;


 int evmap_io_foreach_event_fn ;
 int evmap_io_foreach_fd (struct event_base*,int ,struct evmap_foreach_event_helper*) ;
 int evmap_signal_foreach_event_fn ;
 int evmap_signal_foreach_signal (struct event_base*,int ,struct evmap_foreach_event_helper*) ;

int
evmap_foreach_event_(struct event_base *base,
    event_base_foreach_event_cb fn, void *arg)
{
 struct evmap_foreach_event_helper h;
 int r;
 h.fn = fn;
 h.arg = arg;
 if ((r = evmap_io_foreach_fd(base, evmap_io_foreach_event_fn, &h)))
  return r;
 return evmap_signal_foreach_signal(base, evmap_signal_foreach_event_fn, &h);
}
