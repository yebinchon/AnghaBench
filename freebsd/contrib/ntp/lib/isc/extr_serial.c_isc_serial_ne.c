
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ isc_uint32_t ;
typedef int isc_boolean_t ;


 int ISC_FALSE ;
 int ISC_TRUE ;

isc_boolean_t
isc_serial_ne(isc_uint32_t a, isc_uint32_t b) {
 return ((a != b) ? ISC_TRUE : ISC_FALSE);
}
