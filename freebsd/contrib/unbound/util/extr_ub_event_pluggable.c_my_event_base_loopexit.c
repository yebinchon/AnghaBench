
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ub_event_base {int dummy; } ;
struct timeval {int dummy; } ;
struct TYPE_2__ {int base; } ;


 TYPE_1__* AS_MY_EVENT_BASE (struct ub_event_base*) ;
 int event_base_loopexit (int ,struct timeval*) ;

__attribute__((used)) static int
my_event_base_loopexit(struct ub_event_base* base, struct timeval* tv)
{
 return event_base_loopexit(AS_MY_EVENT_BASE(base)->base, tv);
}
