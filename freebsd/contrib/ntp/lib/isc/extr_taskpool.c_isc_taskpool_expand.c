
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned int ntasks; int ** tasks; int quantum; int tmgr; int mctx; } ;
typedef TYPE_1__ isc_taskpool_t ;
typedef int isc_result_t ;


 int ISC_R_SUCCESS ;
 int REQUIRE (int) ;
 int alloc_pool (int ,int ,unsigned int,int ,TYPE_1__**) ;
 int isc_task_create (int ,int ,int **) ;
 int isc_task_setname (int *,char*,int *) ;
 int isc_taskpool_destroy (TYPE_1__**) ;

isc_result_t
isc_taskpool_expand(isc_taskpool_t **sourcep, unsigned int size,
      isc_taskpool_t **targetp)
{
 isc_result_t result;
 isc_taskpool_t *pool;

 REQUIRE(sourcep != ((void*)0) && *sourcep != ((void*)0));
 REQUIRE(targetp != ((void*)0) && *targetp == ((void*)0));

 pool = *sourcep;
 if (size > pool->ntasks) {
  isc_taskpool_t *newpool = ((void*)0);
  unsigned int i;


  result = alloc_pool(pool->tmgr, pool->mctx, size,
        pool->quantum, &newpool);
  if (result != ISC_R_SUCCESS)
   return (result);


  for (i = 0; i < pool->ntasks; i++) {
   newpool->tasks[i] = pool->tasks[i];
   pool->tasks[i] = ((void*)0);
  }


  for (i = pool->ntasks; i < size; i++) {
   result = isc_task_create(pool->tmgr, pool->quantum,
       &newpool->tasks[i]);
   if (result != ISC_R_SUCCESS) {
    isc_taskpool_destroy(&newpool);
    return (result);
   }
   isc_task_setname(newpool->tasks[i], "taskpool", ((void*)0));
  }

  isc_taskpool_destroy(&pool);
  pool = newpool;
 }

 *sourcep = ((void*)0);
 *targetp = pool;
 return (ISC_R_SUCCESS);
}
