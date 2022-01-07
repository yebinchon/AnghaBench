
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct rlimit {int rlim_cur; int rlim_max; } ;
typedef scalar_t__ isc_result_t ;
typedef scalar_t__ isc_resourcevalue_t ;
typedef scalar_t__ isc_resource_t ;
typedef scalar_t__ isc_boolean_t ;
typedef int ISC_PLATFORM_RLIMITTYPE ;


 scalar_t__ ISC_RESOURCE_UNLIMITED ;
 scalar_t__ ISC_R_SUCCESS ;
 scalar_t__ ISC_TF (int) ;
 int NR_OPEN ;
 int OPEN_MAX ;
 int RLIM_INFINITY ;
 int errno ;
 scalar_t__ getrlimit (int,struct rlimit*) ;
 scalar_t__ gettune (char*,int*) ;
 scalar_t__ isc__errno2result (int ) ;
 scalar_t__ isc_resource_openfiles ;
 scalar_t__ resource2rlim (scalar_t__,int*) ;
 int setrlimit (int,struct rlimit*) ;

isc_result_t
isc_resource_setlimit(isc_resource_t resource, isc_resourcevalue_t value) {
 struct rlimit rl;
 ISC_PLATFORM_RLIMITTYPE rlim_value;
 int unixresult;
 int unixresource;
 isc_result_t result;

 result = resource2rlim(resource, &unixresource);
 if (result != ISC_R_SUCCESS)
  return (result);

 if (value == ISC_RESOURCE_UNLIMITED)
  rlim_value = RLIM_INFINITY;

 else {







  isc_resourcevalue_t rlim_max;
  isc_boolean_t rlim_t_is_signed =
   ISC_TF(((double)(ISC_PLATFORM_RLIMITTYPE)-1) < 0);

  if (rlim_t_is_signed)
   rlim_max = ~((ISC_PLATFORM_RLIMITTYPE)1 <<
         (sizeof(ISC_PLATFORM_RLIMITTYPE) * 8 - 1));
  else
   rlim_max = (ISC_PLATFORM_RLIMITTYPE)-1;

  if (value > rlim_max)
   value = rlim_max;

  rlim_value = value;
 }

 rl.rlim_cur = rl.rlim_max = rlim_value;
 unixresult = setrlimit(unixresource, &rl);

 if (unixresult == 0)
  return (ISC_R_SUCCESS);
 if (resource == isc_resource_openfiles && rlim_value == RLIM_INFINITY) {
  rl.rlim_cur = rl.rlim_max = (1024*1024);
  unixresult = setrlimit(unixresource, &rl);
  if (unixresult == 0)
   return (ISC_R_SUCCESS);
 }
 if (resource == isc_resource_openfiles && rlim_value == RLIM_INFINITY) {
  if (getrlimit(unixresource, &rl) == 0) {
   rl.rlim_cur = rl.rlim_max;
   unixresult = setrlimit(unixresource, &rl);
   if (unixresult == 0)
    return (ISC_R_SUCCESS);
  }
 }
 return (isc__errno2result(errno));
}
