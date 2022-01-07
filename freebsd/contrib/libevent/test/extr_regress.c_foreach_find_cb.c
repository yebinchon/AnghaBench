
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct foreach_helper {int count; } ;
struct event_base {int dummy; } ;
struct event {int dummy; } ;


 scalar_t__ event_get_callback (struct event const*) ;
 struct foreach_helper* event_get_callback_arg (struct event const*) ;
 scalar_t__ timeout_cb ;

__attribute__((used)) static int
foreach_find_cb(const struct event_base *base, const struct event *ev, void *arg)
{
 const struct event **ev_out = arg;
 struct foreach_helper *h = event_get_callback_arg(ev);
 if (event_get_callback(ev) != timeout_cb)
  return 0;
 if (h->count == 99) {
  *ev_out = ev;
  return 101;
 }
 return 0;
}
