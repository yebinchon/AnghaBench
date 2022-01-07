
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_taskaction_t ;
typedef int isc_task_t ;
typedef int isc_result_t ;
typedef int isc_mem_t ;
typedef int isc_event_t ;


 int ISC_APPEVENT_SHUTDOWN ;
 int ISC_LIST_APPEND (int ,int *,int ) ;
 int ISC_R_ALREADYRUNNING ;
 int ISC_R_NOMEMORY ;
 int ISC_R_SUCCESS ;
 int LOCK (int *) ;
 int UNLOCK (int *) ;
 int ev_link ;
 int * isc_event_allocate (int *,int *,int ,int ,void*,int) ;
 int isc_task_attach (int *,int **) ;
 int lock ;
 int on_run ;
 scalar_t__ running ;

isc_result_t
isc__app_onrun(isc_mem_t *mctx, isc_task_t *task, isc_taskaction_t action,
       void *arg) {
 isc_event_t *event;
 isc_task_t *cloned_task = ((void*)0);
 isc_result_t result;


 LOCK(&lock);
 if (running) {
  result = ISC_R_ALREADYRUNNING;
  goto unlock;
 }





 isc_task_attach(task, &cloned_task);
 event = isc_event_allocate(mctx, cloned_task, ISC_APPEVENT_SHUTDOWN,
       action, arg, sizeof(*event));
 if (event == ((void*)0)) {
  result = ISC_R_NOMEMORY;
  goto unlock;
 }

 ISC_LIST_APPEND(on_run, event, ev_link);
 result = ISC_R_SUCCESS;

 unlock:
 UNLOCK(&lock);
 return (result);
}
