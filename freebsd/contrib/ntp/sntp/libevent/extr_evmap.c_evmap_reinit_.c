
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int dummy; } ;


 int evmap_io_foreach_fd (struct event_base*,int ,int*) ;
 int evmap_io_reinit_iter_fn ;
 int evmap_signal_foreach_signal (struct event_base*,int ,int*) ;
 int evmap_signal_reinit_iter_fn ;

int
evmap_reinit_(struct event_base *base)
{
 int result = 0;

 evmap_io_foreach_fd(base, evmap_io_reinit_iter_fn, &result);
 if (result < 0)
  return -1;
 evmap_signal_foreach_signal(base, evmap_signal_reinit_iter_fn, &result);
 if (result < 0)
  return -1;
 return 0;
}
