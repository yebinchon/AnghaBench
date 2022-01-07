
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * tasks; } ;
typedef TYPE_1__ isc_taskpool_t ;
typedef int isc_taskmgr_t ;
typedef scalar_t__ isc_result_t ;
typedef int isc_mem_t ;


 int INSIST (int) ;
 scalar_t__ ISC_R_SUCCESS ;
 scalar_t__ alloc_pool (int *,int *,unsigned int,unsigned int,TYPE_1__**) ;
 scalar_t__ isc_task_create (int *,unsigned int,int *) ;
 int isc_task_setname (int ,char*,int *) ;
 int isc_taskpool_destroy (TYPE_1__**) ;

isc_result_t
isc_taskpool_create(isc_taskmgr_t *tmgr, isc_mem_t *mctx,
      unsigned int ntasks, unsigned int quantum,
      isc_taskpool_t **poolp)
{
 unsigned int i;
 isc_taskpool_t *pool = ((void*)0);
 isc_result_t result;

 INSIST(ntasks > 0);


 result = alloc_pool(tmgr, mctx, ntasks, quantum, &pool);
 if (result != ISC_R_SUCCESS)
  return (result);


 for (i = 0; i < ntasks; i++) {
  result = isc_task_create(tmgr, quantum, &pool->tasks[i]);
  if (result != ISC_R_SUCCESS) {
   isc_taskpool_destroy(&pool);
   return (result);
  }
  isc_task_setname(pool->tasks[i], "taskpool", ((void*)0));
 }

 *poolp = pool;
 return (ISC_R_SUCCESS);
}
