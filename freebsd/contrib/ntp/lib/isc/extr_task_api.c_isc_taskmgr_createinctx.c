
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_taskmgr_t ;
typedef scalar_t__ isc_result_t ;
typedef int isc_mem_t ;
typedef int isc_appctx_t ;


 scalar_t__ ISC_R_SUCCESS ;
 int LOCK (int *) ;
 int REQUIRE (int ) ;
 int UNLOCK (int *) ;
 int createlock ;
 int isc_appctx_settaskmgr (int *,int *) ;
 scalar_t__ stub1 (int *,unsigned int,unsigned int,int **) ;
 scalar_t__ taskmgr_createfunc (int *,unsigned int,unsigned int,int **) ;

isc_result_t
isc_taskmgr_createinctx(isc_mem_t *mctx, isc_appctx_t *actx,
   unsigned int workers, unsigned int default_quantum,
   isc_taskmgr_t **managerp)
{
 isc_result_t result;

 LOCK(&createlock);

 REQUIRE(taskmgr_createfunc != ((void*)0));
 result = (*taskmgr_createfunc)(mctx, workers, default_quantum,
           managerp);

 UNLOCK(&createlock);

 if (result == ISC_R_SUCCESS)
  isc_appctx_settaskmgr(actx, *managerp);

 return (result);
}
