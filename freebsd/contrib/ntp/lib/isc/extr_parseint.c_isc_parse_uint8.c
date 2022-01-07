
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ isc_uint8_t ;
typedef int isc_uint32_t ;
typedef scalar_t__ isc_result_t ;


 scalar_t__ ISC_R_RANGE ;
 scalar_t__ ISC_R_SUCCESS ;
 scalar_t__ isc_parse_uint32 (int*,char const*,int) ;

isc_result_t
isc_parse_uint8(isc_uint8_t *uip, const char *string, int base) {
 isc_uint32_t val;
 isc_result_t result;
 result = isc_parse_uint32(&val, string, base);
 if (result != ISC_R_SUCCESS)
  return (result);
 if (val > 0xFF)
  return (ISC_R_RANGE);
 *uip = (isc_uint8_t) val;
 return (ISC_R_SUCCESS);
}
