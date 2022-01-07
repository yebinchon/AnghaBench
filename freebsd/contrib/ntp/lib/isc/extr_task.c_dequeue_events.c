
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ isc_eventtype_t ;
typedef int isc_eventlist_t ;
struct TYPE_11__ {scalar_t__ ev_type; void* ev_sender; void* ev_tag; } ;
typedef TYPE_1__ isc_event_t ;
typedef int isc_boolean_t ;
struct TYPE_12__ {int lock; int events; } ;
typedef TYPE_2__ isc__task_t ;


 int DEQUEUE (int ,TYPE_1__*,int ) ;
 int ENQUEUE (int ,TYPE_1__*,int ) ;
 TYPE_1__* HEAD (int ) ;
 int LOCK (int *) ;
 TYPE_1__* NEXT (TYPE_1__*,int ) ;
 scalar_t__ PURGE_OK (TYPE_1__*) ;
 int REQUIRE (int) ;
 int UNLOCK (int *) ;
 int VALID_TASK (TYPE_2__*) ;
 int XTRACE (char*) ;
 int ev_link ;

__attribute__((used)) static unsigned int
dequeue_events(isc__task_t *task, void *sender, isc_eventtype_t first,
        isc_eventtype_t last, void *tag,
        isc_eventlist_t *events, isc_boolean_t purging)
{
 isc_event_t *event, *next_event;
 unsigned int count = 0;

 REQUIRE(VALID_TASK(task));
 REQUIRE(last >= first);

 XTRACE("dequeue_events");
 LOCK(&task->lock);

 for (event = HEAD(task->events); event != ((void*)0); event = next_event) {
  next_event = NEXT(event, ev_link);
  if (event->ev_type >= first && event->ev_type <= last &&
      (sender == ((void*)0) || event->ev_sender == sender) &&
      (tag == ((void*)0) || event->ev_tag == tag) &&
      (!purging || PURGE_OK(event))) {
   DEQUEUE(task->events, event, ev_link);
   ENQUEUE(*events, event, ev_link);
   count++;
  }
 }

 UNLOCK(&task->lock);

 return (count);
}
