
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int rlim_max; } ;
typedef scalar_t__ isc_result_t ;
typedef int isc_resourcevalue_t ;
typedef int isc_resource_t ;


 int INSIST (int) ;
 scalar_t__ ISC_R_SUCCESS ;
 int getrlimit (int,struct rlimit*) ;
 scalar_t__ resource2rlim (int ,int*) ;

isc_result_t
isc_resource_getlimit(isc_resource_t resource, isc_resourcevalue_t *value) {
 int unixresult;
 int unixresource;
 struct rlimit rl;
 isc_result_t result;

 result = resource2rlim(resource, &unixresource);
 if (result == ISC_R_SUCCESS) {
  unixresult = getrlimit(unixresource, &rl);
  INSIST(unixresult == 0);
  *value = rl.rlim_max;
 }

 return (result);
}
