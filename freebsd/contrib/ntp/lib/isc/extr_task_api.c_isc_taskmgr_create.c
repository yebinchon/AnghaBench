
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_taskmgr_t ;
typedef int isc_result_t ;
typedef int isc_mem_t ;


 int LOCK (int *) ;
 int REQUIRE (int ) ;
 int UNLOCK (int *) ;
 int createlock ;
 int stub1 (int *,unsigned int,unsigned int,int **) ;
 int taskmgr_createfunc (int *,unsigned int,unsigned int,int **) ;

isc_result_t
isc_taskmgr_create(isc_mem_t *mctx, unsigned int workers,
     unsigned int default_quantum, isc_taskmgr_t **managerp)
{
 isc_result_t result;

 LOCK(&createlock);

 REQUIRE(taskmgr_createfunc != ((void*)0));
 result = (*taskmgr_createfunc)(mctx, workers, default_quantum,
           managerp);

 UNLOCK(&createlock);

 return (result);
}
