
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int isc_task_t ;
typedef int isc_result_t ;
struct TYPE_7__ {int events; } ;
typedef TYPE_1__ isc_ondestroy_t ;
struct TYPE_8__ {int * ev_sender; } ;
typedef TYPE_2__ isc_event_t ;


 int ISC_LIST_APPEND (int ,TYPE_2__*,int ) ;
 int ISC_R_SUCCESS ;
 int REQUIRE (int ) ;
 int VALID_ONDESTROY (TYPE_1__*) ;
 int ev_link ;
 int isc_task_attach (int *,int **) ;

isc_result_t
isc_ondestroy_register(isc_ondestroy_t *ondest, isc_task_t *task,
         isc_event_t **eventp)
{
 isc_event_t *theevent;
 isc_task_t *thetask = ((void*)0);

 REQUIRE(VALID_ONDESTROY(ondest));
 REQUIRE(task != ((void*)0));
 REQUIRE(eventp != ((void*)0));

 theevent = *eventp;

 REQUIRE(theevent != ((void*)0));

 isc_task_attach(task, &thetask);

 theevent->ev_sender = thetask;

 ISC_LIST_APPEND(ondest->events, theevent, ev_link);

 return (ISC_R_SUCCESS);
}
