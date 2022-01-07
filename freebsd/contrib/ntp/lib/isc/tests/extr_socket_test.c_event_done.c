
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int isc_task_t ;
struct TYPE_6__ {int result; } ;
typedef TYPE_1__ isc_socketevent_t ;
struct TYPE_7__ {TYPE_3__* ev_arg; } ;
typedef TYPE_2__ isc_event_t ;
struct TYPE_8__ {int done; int result; } ;
typedef TYPE_3__ completion_t ;


 int ISC_TRUE ;
 int UNUSED (int *) ;
 int isc_event_free (TYPE_2__**) ;

__attribute__((used)) static void
event_done(isc_task_t *task, isc_event_t *event) {
 isc_socketevent_t *dev;
 completion_t *completion = event->ev_arg;

 UNUSED(task);

 dev = (isc_socketevent_t *) event;
 completion->result = dev->result;
 completion->done = ISC_TRUE;
 isc_event_free(&event);
}
