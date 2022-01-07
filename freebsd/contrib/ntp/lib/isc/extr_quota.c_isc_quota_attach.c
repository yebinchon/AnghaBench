
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ isc_result_t ;
typedef int isc_quota_t ;


 int INSIST (int) ;
 scalar_t__ ISC_R_SOFTQUOTA ;
 scalar_t__ ISC_R_SUCCESS ;
 scalar_t__ isc_quota_reserve (int *) ;

isc_result_t
isc_quota_attach(isc_quota_t *quota, isc_quota_t **p)
{
 isc_result_t result;
 INSIST(p != ((void*)0) && *p == ((void*)0));
 result = isc_quota_reserve(quota);
 if (result == ISC_R_SUCCESS || result == ISC_R_SOFTQUOTA)
  *p = quota;
 return (result);
}
