
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct event_base {TYPE_1__* evsel; } ;
struct TYPE_2__ {scalar_t__ add; } ;


 scalar_t__ event_changelist_add_ ;
 int event_changelist_assert_ok (struct event_base*) ;
 int evmap_io_check_integrity_fn ;
 int evmap_io_foreach_fd (struct event_base*,int ,int *) ;
 int evmap_signal_check_integrity_fn ;
 int evmap_signal_foreach_signal (struct event_base*,int ,int *) ;

void
evmap_check_integrity_(struct event_base *base)
{
 evmap_io_foreach_fd(base, evmap_io_check_integrity_fn, ((void*)0));
 evmap_signal_foreach_signal(base, evmap_signal_check_integrity_fn, ((void*)0));

 if (base->evsel->add == event_changelist_add_)
  event_changelist_assert_ok(base);
}
