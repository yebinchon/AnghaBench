
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ub_event {int dummy; } ;
struct TYPE_3__ {int ev_fd; } ;
struct TYPE_4__ {TYPE_1__ ev; } ;


 TYPE_2__* AS_MY_EVENT (struct ub_event*) ;

__attribute__((used)) static void
my_event_set_fd(struct ub_event* ev, int fd)
{
 AS_MY_EVENT(ev)->ev.ev_fd = fd;
}
