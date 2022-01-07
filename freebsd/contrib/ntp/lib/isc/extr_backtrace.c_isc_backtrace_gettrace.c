
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_result_t ;


 int ISC_R_FAILURE ;
 int ISC_R_NOTIMPLEMENTED ;
 int UNUSED (int) ;

isc_result_t
isc_backtrace_gettrace(void **addrs, int maxaddrs, int *nframes) {

 if (addrs == ((void*)0) || nframes == ((void*)0))
  return (ISC_R_FAILURE);

 UNUSED(maxaddrs);

 return (ISC_R_NOTIMPLEMENTED);
}
