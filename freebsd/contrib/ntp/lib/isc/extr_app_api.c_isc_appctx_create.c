
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_result_t ;
typedef int isc_mem_t ;
typedef int isc_appctx_t ;


 int LOCK (int *) ;
 int REQUIRE (int ) ;
 int UNLOCK (int *) ;
 int appctx_createfunc (int *,int **) ;
 int createlock ;
 int stub1 (int *,int **) ;

isc_result_t
isc_appctx_create(isc_mem_t *mctx, isc_appctx_t **ctxp) {
 isc_result_t result;

 LOCK(&createlock);

 REQUIRE(appctx_createfunc != ((void*)0));
 result = (*appctx_createfunc)(mctx, ctxp);

 UNLOCK(&createlock);

 return (result);
}
