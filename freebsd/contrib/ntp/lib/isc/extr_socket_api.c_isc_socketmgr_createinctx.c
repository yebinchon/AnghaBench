
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_socketmgr_t ;
typedef scalar_t__ isc_result_t ;
typedef int isc_mem_t ;
typedef int isc_appctx_t ;


 scalar_t__ ISC_R_SUCCESS ;
 int LOCK (int *) ;
 int REQUIRE (int ) ;
 int UNLOCK (int *) ;
 int createlock ;
 int isc_appctx_setsocketmgr (int *,int *) ;
 scalar_t__ socketmgr_createfunc (int *,int **) ;
 scalar_t__ stub1 (int *,int **) ;

isc_result_t
isc_socketmgr_createinctx(isc_mem_t *mctx, isc_appctx_t *actx,
     isc_socketmgr_t **managerp)
{
 isc_result_t result;

 LOCK(&createlock);

 REQUIRE(socketmgr_createfunc != ((void*)0));
 result = (*socketmgr_createfunc)(mctx, managerp);

 UNLOCK(&createlock);

 if (result == ISC_R_SUCCESS)
  isc_appctx_setsocketmgr(actx, *managerp);

 return (result);
}
