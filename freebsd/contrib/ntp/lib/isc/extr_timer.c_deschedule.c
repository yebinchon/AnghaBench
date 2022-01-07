
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ isc_boolean_t ;
struct TYPE_4__ {scalar_t__ nscheduled; int wakeup; int heap; } ;
typedef TYPE_1__ isc__timermgr_t ;
struct TYPE_5__ {int index; TYPE_1__* manager; } ;
typedef TYPE_2__ isc__timer_t ;


 int INSIST (int) ;
 scalar_t__ ISC_FALSE ;
 int ISC_MSGSET_TIMER ;
 int ISC_MSG_SIGNALDESCHED ;
 scalar_t__ ISC_TRUE ;
 int SIGNAL (int *) ;
 int XTRACE (int ) ;
 int isc_heap_delete (int ,int) ;
 int isc_msgcat ;
 int isc_msgcat_get (int ,int ,int ,char*) ;

__attribute__((used)) static inline void
deschedule(isc__timer_t *timer) {



 isc__timermgr_t *manager;





 manager = timer->manager;
 if (timer->index > 0) {




  isc_heap_delete(manager->heap, timer->index);
  timer->index = 0;
  INSIST(manager->nscheduled > 0);
  manager->nscheduled--;
 }
}
