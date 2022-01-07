
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_timermgr_t ;
typedef int isc_result_t ;
typedef int isc_mem_t ;


 int LOCK (int *) ;
 int REQUIRE (int ) ;
 int UNLOCK (int *) ;
 int createlock ;
 int stub1 (int *,int **) ;
 int timermgr_createfunc (int *,int **) ;

isc_result_t
isc_timermgr_create(isc_mem_t *mctx, isc_timermgr_t **managerp) {
 isc_result_t result;

 LOCK(&createlock);

 REQUIRE(timermgr_createfunc != ((void*)0));
 result = (*timermgr_createfunc)(mctx, managerp);

 UNLOCK(&createlock);

 return (result);
}
