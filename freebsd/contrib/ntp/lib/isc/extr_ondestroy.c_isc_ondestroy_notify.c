
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int isc_task_t ;
struct TYPE_8__ {int events; } ;
typedef TYPE_1__ isc_ondestroy_t ;
struct TYPE_9__ {int * ev_sender; } ;
typedef TYPE_2__ isc_event_t ;


 TYPE_2__* ISC_LIST_HEAD (int ) ;
 int ISC_LIST_UNLINK (int ,TYPE_2__*,int ) ;
 int REQUIRE (int ) ;
 int VALID_ONDESTROY (TYPE_1__*) ;
 int ev_link ;
 int isc_task_sendanddetach (int **,TYPE_2__**) ;

void
isc_ondestroy_notify(isc_ondestroy_t *ondest, void *sender) {
 isc_event_t *eventp;
 isc_task_t *task;

 REQUIRE(VALID_ONDESTROY(ondest));

 eventp = ISC_LIST_HEAD(ondest->events);
 while (eventp != ((void*)0)) {
  ISC_LIST_UNLINK(ondest->events, eventp, ev_link);

  task = eventp->ev_sender;
  eventp->ev_sender = sender;

  isc_task_sendanddetach(&task, &eventp);

  eventp = ISC_LIST_HEAD(ondest->events);
 }
}
