
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int isc_task_t ;
typedef int isc_result_t ;
struct TYPE_7__ {int * ev_sender; } ;
typedef TYPE_1__ isc_event_t ;
typedef int HANDLE ;


 int FALSE ;
 scalar_t__ GetCurrentThread () ;
 int INFINITE ;
 void* ISC_FALSE ;
 TYPE_1__* ISC_LIST_HEAD (int ) ;
 TYPE_1__* ISC_LIST_NEXT (TYPE_1__*,int ) ;
 int ISC_LIST_UNLINK (int ,TYPE_1__*,int ) ;
 int ISC_R_RELOAD ;
 int ISC_R_SUCCESS ;
 void* ISC_TRUE ;
 int LOCK (int *) ;
 int NUM_EVENTS ;

 int REQUIRE (int) ;

 int UNLOCK (int *) ;
 int WaitForMultipleObjects (int ,int ,int ,int ) ;
 scalar_t__ WaitSucceeded (int ,int ) ;
 int WaitSucceededIndex (int ) ;
 scalar_t__ blocked ;
 int dwWaitResult ;
 int ev_link ;
 int exit (int) ;
 int hEvents ;
 int isc_task_sendanddetach (int **,TYPE_1__**) ;
 int lock ;
 scalar_t__ main_thread ;
 int on_run ;
 void* running ;
 void* want_reload ;
 void* want_shutdown ;

isc_result_t
isc__app_run(void) {
 isc_event_t *event, *next_event;
 isc_task_t *task;
 HANDLE *pHandles = ((void*)0);

 REQUIRE(main_thread == GetCurrentThread());
 LOCK(&lock);
 if (!running) {
  running = ISC_TRUE;




  for (event = ISC_LIST_HEAD(on_run);
       event != ((void*)0);
       event = next_event) {
   next_event = ISC_LIST_NEXT(event, ev_link);
   ISC_LIST_UNLINK(on_run, event, ev_link);
   task = event->ev_sender;
   event->ev_sender = ((void*)0);
   isc_task_sendanddetach(&task, &event);
  }

 }

 UNLOCK(&lock);






 while (!want_shutdown) {
  dwWaitResult = WaitForMultipleObjects(NUM_EVENTS, hEvents,
            FALSE, INFINITE);



  if (WaitSucceeded(dwWaitResult, NUM_EVENTS)) {




   switch (WaitSucceededIndex(dwWaitResult)) {
   case 129:
    want_reload = ISC_TRUE;
    break;

   case 128:
    want_shutdown = ISC_TRUE;
    break;
   }
  }
  if (want_reload) {
   want_reload = ISC_FALSE;
   return (ISC_R_RELOAD);
  }

  if (want_shutdown && blocked)
   exit(-1);
 }

 return (ISC_R_SUCCESS);
}
