
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ isc_result_t ;


 int CreateEvent (int *,int ,int ,int *) ;
 int FALSE ;
 int GetCurrentThread () ;
 int ISC_LIST_INIT (int ) ;
 scalar_t__ ISC_R_SUCCESS ;
 size_t RELOAD_EVENT ;
 size_t SHUTDOWN_EVENT ;
 int * hEvents ;
 scalar_t__ isc_mutex_init (int *) ;
 int lock ;
 int main_thread ;
 int on_run ;

isc_result_t
isc__app_start(void) {
 isc_result_t result;





 main_thread = GetCurrentThread();

 result = isc_mutex_init(&lock);
 if (result != ISC_R_SUCCESS)
  return (result);


 hEvents[RELOAD_EVENT] = CreateEvent(((void*)0), FALSE, FALSE, ((void*)0));


 hEvents[SHUTDOWN_EVENT] = CreateEvent(((void*)0), FALSE, FALSE, ((void*)0));

 ISC_LIST_INIT(on_run);
 return (ISC_R_SUCCESS);
}
