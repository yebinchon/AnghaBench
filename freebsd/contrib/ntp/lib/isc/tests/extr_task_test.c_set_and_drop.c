
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int isc_task_t ;
struct TYPE_4__ {scalar_t__ ev_arg; } ;
typedef TYPE_1__ isc_event_t ;


 int LOCK (int *) ;
 int UNLOCK (int *) ;
 int UNUSED (int *) ;
 int counter ;
 int isc_event_free (TYPE_1__**) ;
 scalar_t__ isc_taskmgr_mode (int ) ;
 int isc_taskmgr_setmode (int ,int ) ;
 int isc_taskmgrmode_normal ;
 int set_lock ;
 int taskmgr ;

__attribute__((used)) static void
set_and_drop(isc_task_t *task, isc_event_t *event) {
 int *value = (int *) event->ev_arg;

 UNUSED(task);

 isc_event_free(&event);
 LOCK(&set_lock);
 *value = (int) isc_taskmgr_mode(taskmgr);
 counter++;
 UNLOCK(&set_lock);
 isc_taskmgr_setmode(taskmgr, isc_taskmgrmode_normal);
}
