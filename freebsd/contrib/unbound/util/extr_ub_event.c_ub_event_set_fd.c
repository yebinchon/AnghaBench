
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ub_event {int dummy; } ;
struct TYPE_2__ {int ev_fd; } ;


 TYPE_1__* AS_EVENT (struct ub_event*) ;

void
ub_event_set_fd(struct ub_event* ev, int fd)
{
 AS_EVENT(ev)->ev_fd = fd;
}
