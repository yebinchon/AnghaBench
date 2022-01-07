
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int isc_result_t ;
struct TYPE_8__ {unsigned long th; int ** handle; } ;
typedef TYPE_1__ isc_condition_thread_t ;
struct TYPE_9__ {int threadlist; int ** events; } ;
typedef TYPE_2__ isc_condition_t ;
typedef int * HANDLE ;


 int * CreateEvent (int *,int ,int ,int *) ;
 int FALSE ;
 int ISC_LIST_APPEND (int ,TYPE_1__*,int ) ;
 int ISC_R_NOMEMORY ;
 int ISC_R_SUCCESS ;
 int ISC_R_UNEXPECTED ;
 size_t LBROADCAST ;
 size_t LSIGNAL ;
 int REQUIRE (int) ;
 int free (TYPE_1__*) ;
 int link ;
 TYPE_1__* malloc (int) ;

__attribute__((used)) static isc_result_t
register_thread(unsigned long thrd, isc_condition_t *gblcond,
  isc_condition_thread_t **localcond)
{
 HANDLE hc;
 isc_condition_thread_t *newthread;

 REQUIRE(localcond != ((void*)0) && *localcond == ((void*)0));

 newthread = malloc(sizeof(isc_condition_thread_t));
 if (newthread == ((void*)0))
  return (ISC_R_NOMEMORY);




 hc = CreateEvent(((void*)0), FALSE, FALSE, ((void*)0));
 if (hc == ((void*)0)) {
  free(newthread);
  return (ISC_R_UNEXPECTED);
 }




 newthread->handle[LSIGNAL] = gblcond->events[LSIGNAL];
 newthread->handle[LBROADCAST] = hc;
 newthread->th = thrd;




 ISC_LIST_APPEND(gblcond->threadlist, newthread, link);
 *localcond = newthread;
 return (ISC_R_SUCCESS);
}
