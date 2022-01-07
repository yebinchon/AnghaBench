
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int isc_result_t ;
struct TYPE_7__ {int * handle; } ;
typedef TYPE_1__ isc_condition_thread_t ;
struct TYPE_8__ {int threadlist; } ;
typedef TYPE_2__ isc_condition_t ;
typedef scalar_t__ isc_boolean_t ;


 scalar_t__ ISC_FALSE ;
 TYPE_1__* ISC_LIST_HEAD (int ) ;
 TYPE_1__* ISC_LIST_NEXT (TYPE_1__*,int ) ;
 int ISC_R_SUCCESS ;
 int ISC_R_UNEXPECTED ;
 scalar_t__ ISC_TRUE ;
 size_t LBROADCAST ;
 int REQUIRE (int ) ;
 int SetEvent (int ) ;
 int link ;

isc_result_t
isc_condition_broadcast(isc_condition_t *cond) {

 isc_condition_thread_t *threadcond;
 isc_boolean_t failed = ISC_FALSE;





 REQUIRE(cond != ((void*)0));




 for (threadcond = ISC_LIST_HEAD(cond->threadlist);
      threadcond != ((void*)0);
      threadcond = ISC_LIST_NEXT(threadcond, link)) {

  if (!SetEvent(threadcond->handle[LBROADCAST]))
   failed = ISC_TRUE;
 }

 if (failed)
  return (ISC_R_UNEXPECTED);

 return (ISC_R_SUCCESS);
}
