
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ isc_result_t ;
typedef int isc_mutex_t ;
struct TYPE_6__ {int handle; } ;
typedef TYPE_1__ isc_condition_thread_t ;
struct TYPE_7__ {int waiters; } ;
typedef TYPE_2__ isc_condition_t ;
typedef scalar_t__ DWORD ;


 int EnterCriticalSection (int *) ;
 int FALSE ;
 scalar_t__ ISC_R_SUCCESS ;
 scalar_t__ ISC_R_TIMEDOUT ;
 scalar_t__ ISC_R_UNEXPECTED ;
 int LeaveCriticalSection (int *) ;
 scalar_t__ WAIT_FAILED ;
 scalar_t__ WAIT_TIMEOUT ;
 scalar_t__ WaitForMultipleObjects (int,int ,int ,scalar_t__) ;
 scalar_t__ find_thread_condition (int ,TYPE_2__*,TYPE_1__**) ;
 int isc_thread_self () ;

__attribute__((used)) static isc_result_t
wait(isc_condition_t *cond, isc_mutex_t *mutex, DWORD milliseconds) {
 DWORD result;
 isc_result_t tresult;
 isc_condition_thread_t *threadcond = ((void*)0);




 tresult = find_thread_condition(isc_thread_self(), cond, &threadcond);
 if (tresult != ISC_R_SUCCESS)
  return (tresult);

 cond->waiters++;
 LeaveCriticalSection(mutex);
 result = WaitForMultipleObjects(2, threadcond->handle, FALSE,
     milliseconds);
 EnterCriticalSection(mutex);
 cond->waiters--;
 if (result == WAIT_FAILED) {

  return (ISC_R_UNEXPECTED);
 }
 if (result == WAIT_TIMEOUT)
  return (ISC_R_TIMEDOUT);

 return (ISC_R_SUCCESS);
}
