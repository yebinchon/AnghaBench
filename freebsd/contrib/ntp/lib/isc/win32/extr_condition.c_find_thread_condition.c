
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int isc_result_t ;
struct TYPE_10__ {unsigned long th; } ;
typedef TYPE_1__ isc_condition_thread_t ;
struct TYPE_11__ {int threadlist; } ;
typedef TYPE_2__ isc_condition_t ;


 TYPE_1__* ISC_LIST_HEAD (int ) ;
 TYPE_1__* ISC_LIST_NEXT (TYPE_1__*,int ) ;
 int ISC_R_SUCCESS ;
 int REQUIRE (int) ;
 int link ;
 int register_thread (unsigned long,TYPE_2__*,TYPE_1__**) ;

__attribute__((used)) static isc_result_t
find_thread_condition(unsigned long thrd, isc_condition_t *cond,
        isc_condition_thread_t **threadcondp)
{
 isc_condition_thread_t *threadcond;

 REQUIRE(threadcondp != ((void*)0) && *threadcondp == ((void*)0));




 for (threadcond = ISC_LIST_HEAD(cond->threadlist);
      threadcond != ((void*)0);
      threadcond = ISC_LIST_NEXT(threadcond, link)) {

  if (threadcond->th == thrd) {
   *threadcondp = threadcond;
   return (ISC_R_SUCCESS);
  }
 }




 return (register_thread(thrd, cond, threadcondp));
}
