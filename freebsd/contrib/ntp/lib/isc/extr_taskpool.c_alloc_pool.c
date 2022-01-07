
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int ntasks; unsigned int quantum; int ** tasks; int * tmgr; int * mctx; } ;
typedef TYPE_1__ isc_taskpool_t ;
typedef int isc_taskmgr_t ;
typedef int isc_task_t ;
typedef int isc_result_t ;
typedef int isc_mem_t ;


 int ISC_R_NOMEMORY ;
 int ISC_R_SUCCESS ;
 void* isc_mem_get (int *,unsigned int) ;
 int isc_mem_put (int *,TYPE_1__*,int) ;

__attribute__((used)) static isc_result_t
alloc_pool(isc_taskmgr_t *tmgr, isc_mem_t *mctx, unsigned int ntasks,
    unsigned int quantum, isc_taskpool_t **poolp)
{
 isc_taskpool_t *pool;
 unsigned int i;

 pool = isc_mem_get(mctx, sizeof(*pool));
 if (pool == ((void*)0))
  return (ISC_R_NOMEMORY);
 pool->mctx = mctx;
 pool->ntasks = ntasks;
 pool->quantum = quantum;
 pool->tmgr = tmgr;
 pool->tasks = isc_mem_get(mctx, ntasks * sizeof(isc_task_t *));
 if (pool->tasks == ((void*)0)) {
  isc_mem_put(mctx, pool, sizeof(*pool));
  return (ISC_R_NOMEMORY);
 }
 for (i = 0; i < ntasks; i++)
  pool->tasks[i] = ((void*)0);

 *poolp = pool;
 return (ISC_R_SUCCESS);
}
