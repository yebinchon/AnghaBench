
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int isc_task_t ;
typedef int isc_ratelimiter_t ;
struct TYPE_3__ {scalar_t__ ev_arg; } ;
typedef TYPE_1__ isc_event_t ;


 int UNUSED (int *) ;
 int isc_ratelimiter_detach (int **) ;

__attribute__((used)) static void
ratelimiter_shutdowncomplete(isc_task_t *task, isc_event_t *event) {
 isc_ratelimiter_t *rl = (isc_ratelimiter_t *)event->ev_arg;

 UNUSED(task);

 isc_ratelimiter_detach(&rl);
}
