
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int isc_result_t ;
struct TYPE_3__ {int threadlist; int ** events; scalar_t__ waiters; } ;
typedef TYPE_1__ isc_condition_t ;
typedef int * HANDLE ;


 int * CreateEvent (int *,int ,int ,int *) ;
 int FALSE ;
 int ISC_LIST_INIT (int ) ;
 int ISC_R_SUCCESS ;
 int ISC_R_UNEXPECTED ;
 size_t LSIGNAL ;
 int REQUIRE (int ) ;

isc_result_t
isc_condition_init(isc_condition_t *cond) {
 HANDLE h;

 REQUIRE(cond != ((void*)0));

 cond->waiters = 0;



 h = CreateEvent(((void*)0), FALSE, FALSE, ((void*)0));
 if (h == ((void*)0)) {

  return (ISC_R_UNEXPECTED);
 }
 cond->events[LSIGNAL] = h;





 ISC_LIST_INIT(cond->threadlist);

 return (ISC_R_SUCCESS);
}
