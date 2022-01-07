
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_timermgr_t ;
typedef scalar_t__ isc_result_t ;
typedef int isc_mem_t ;
typedef int isc_appctx_t ;


 scalar_t__ ISC_R_SUCCESS ;
 int LOCK (int *) ;
 int REQUIRE (int ) ;
 int UNLOCK (int *) ;
 int createlock ;
 int isc_appctx_settimermgr (int *,int *) ;
 scalar_t__ stub1 (int *,int **) ;
 scalar_t__ timermgr_createfunc (int *,int **) ;

isc_result_t
isc_timermgr_createinctx(isc_mem_t *mctx, isc_appctx_t *actx,
    isc_timermgr_t **managerp)
{
 isc_result_t result;

 LOCK(&createlock);

 REQUIRE(timermgr_createfunc != ((void*)0));
 result = (*timermgr_createfunc)(mctx, managerp);

 UNLOCK(&createlock);

 if (result == ISC_R_SUCCESS)
  isc_appctx_settimermgr(actx, *managerp);

 return (result);
}
