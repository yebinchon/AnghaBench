
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_uint32_t ;
typedef scalar_t__ isc_int32_t ;
typedef int isc_boolean_t ;


 int ISC_FALSE ;
 int ISC_TRUE ;

isc_boolean_t
isc_serial_lt(isc_uint32_t a, isc_uint32_t b) {



 if (a == (b ^ 0x80000000U))
  return (ISC_FALSE);
 return (((isc_int32_t)(a - b) < 0) ? ISC_TRUE : ISC_FALSE);
}
