
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct event_base {int dummy; } ;


 int EV_TIMEOUT ;
 int event_base_once (struct event_base*,int,int ,int ,struct event_base*,struct timeval const*) ;
 int event_loopexit_cb ;

int
event_base_loopexit(struct event_base *event_base, const struct timeval *tv)
{
 return (event_base_once(event_base, -1, EV_TIMEOUT, event_loopexit_cb,
      event_base, tv));
}
