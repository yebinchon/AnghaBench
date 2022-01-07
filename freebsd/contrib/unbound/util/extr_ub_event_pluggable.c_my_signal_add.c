
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ub_event {int dummy; } ;
struct timeval {int dummy; } ;
struct TYPE_2__ {int ev; } ;


 TYPE_1__* AS_MY_EVENT (struct ub_event*) ;
 int signal_add (int *,struct timeval*) ;

__attribute__((used)) static int
my_signal_add(struct ub_event* ev, struct timeval* tv)
{
 return signal_add(&AS_MY_EVENT(ev)->ev, tv);
}
