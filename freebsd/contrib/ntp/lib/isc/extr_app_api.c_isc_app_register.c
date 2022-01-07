
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ isc_result_t ;
typedef int * isc_appctxcreatefunc_t ;


 scalar_t__ ISC_R_EXISTS ;
 scalar_t__ ISC_R_SUCCESS ;
 int LOCK (int *) ;
 int RUNTIME_CHECK (int) ;
 int UNLOCK (int *) ;
 int * appctx_createfunc ;
 int createlock ;
 int initialize ;
 scalar_t__ isc_once_do (int *,int ) ;
 int once ;

isc_result_t
isc_app_register(isc_appctxcreatefunc_t createfunc) {
 isc_result_t result = ISC_R_SUCCESS;

 RUNTIME_CHECK(isc_once_do(&once, initialize) == ISC_R_SUCCESS);

 LOCK(&createlock);
 if (appctx_createfunc == ((void*)0))
  appctx_createfunc = createfunc;
 else
  result = ISC_R_EXISTS;
 UNLOCK(&createlock);

 return (result);
}
