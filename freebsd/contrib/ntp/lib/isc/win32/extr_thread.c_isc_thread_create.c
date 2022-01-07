
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_threadfunc_t ;
typedef int isc_threadarg_t ;
typedef int * isc_thread_t ;
typedef int isc_result_t ;


 int ISC_R_SUCCESS ;
 int ISC_R_UNEXPECTED ;
 scalar_t__ _beginthreadex (int *,int ,int ,int ,int ,unsigned int*) ;

isc_result_t
isc_thread_create(isc_threadfunc_t start, isc_threadarg_t arg,
    isc_thread_t *threadp)
{
 isc_thread_t thread;
 unsigned int id;

 thread = (isc_thread_t)_beginthreadex(((void*)0), 0, start, arg, 0, &id);
 if (thread == ((void*)0)) {

  return (ISC_R_UNEXPECTED);
 }

 *threadp = thread;

 return (ISC_R_SUCCESS);
}
