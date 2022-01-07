
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int dummy; } ;


 int event_base_loop (struct event_base*,int ) ;

int
event_base_dispatch(struct event_base *event_base)
{
  return (event_base_loop(event_base, 0));
}
