
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int isc_result_t ;
struct TYPE_9__ {int * handle; } ;
typedef TYPE_1__ isc_condition_thread_t ;
struct TYPE_10__ {scalar_t__ waiters; int threadlist; int * events; } ;
typedef TYPE_2__ isc_condition_t ;


 int CloseHandle (int ) ;
 int DEQUEUE (int ,TYPE_1__*,int ) ;
 TYPE_1__* ISC_LIST_HEAD (int ) ;
 TYPE_1__* ISC_LIST_NEXT (TYPE_1__*,int ) ;
 int ISC_R_SUCCESS ;
 size_t LBROADCAST ;
 size_t LSIGNAL ;
 int REQUIRE (int) ;
 int free (TYPE_1__*) ;
 int link ;

isc_result_t
isc_condition_destroy(isc_condition_t *cond) {

 isc_condition_thread_t *next, *threadcond;

 REQUIRE(cond != ((void*)0));
 REQUIRE(cond->waiters == 0);

 (void)CloseHandle(cond->events[LSIGNAL]);




 threadcond = ISC_LIST_HEAD(cond->threadlist);

 while (threadcond != ((void*)0)) {
  next = ISC_LIST_NEXT(threadcond, link);
  DEQUEUE(cond->threadlist, threadcond, link);
  (void) CloseHandle(threadcond->handle[LBROADCAST]);
  free(threadcond);
  threadcond = next;
 }

 return (ISC_R_SUCCESS);
}
