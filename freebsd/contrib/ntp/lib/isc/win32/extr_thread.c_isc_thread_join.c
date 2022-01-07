
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ isc_threadresult_t ;
typedef int isc_thread_t ;
typedef int isc_result_t ;
typedef scalar_t__ DWORD ;


 int CloseHandle (int ) ;
 int GetExitCodeThread (int ,scalar_t__*) ;
 int INFINITE ;
 int ISC_R_SUCCESS ;
 int ISC_R_UNEXPECTED ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WaitForSingleObject (int ,int ) ;

isc_result_t
isc_thread_join(isc_thread_t thread, isc_threadresult_t *rp) {
 DWORD result;
 DWORD threadrc;

 result = WaitForSingleObject(thread, INFINITE);
 if (result != WAIT_OBJECT_0) {

  return (ISC_R_UNEXPECTED);
 }
 if (rp != ((void*)0)) {
  if(!GetExitCodeThread(thread, &threadrc)) {

   return (ISC_R_UNEXPECTED);
  }
  *rp = threadrc;
 }
 (void)CloseHandle(thread);

 return (ISC_R_SUCCESS);
}
