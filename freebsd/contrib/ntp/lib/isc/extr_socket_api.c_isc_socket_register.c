
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * isc_socketmgrcreatefunc_t ;
typedef scalar_t__ isc_result_t ;


 scalar_t__ ISC_R_EXISTS ;
 scalar_t__ ISC_R_SUCCESS ;
 int LOCK (int *) ;
 int RUNTIME_CHECK (int) ;
 int UNLOCK (int *) ;
 int createlock ;
 int initialize ;
 scalar_t__ isc_once_do (int *,int ) ;
 int once ;
 int * socketmgr_createfunc ;

isc_result_t
isc_socket_register(isc_socketmgrcreatefunc_t createfunc) {
 isc_result_t result = ISC_R_SUCCESS;

 RUNTIME_CHECK(isc_once_do(&once, initialize) == ISC_R_SUCCESS);

 LOCK(&createlock);
 if (socketmgr_createfunc == ((void*)0))
  socketmgr_createfunc = createfunc;
 else
  result = ISC_R_EXISTS;
 UNLOCK(&createlock);

 return (result);
}
