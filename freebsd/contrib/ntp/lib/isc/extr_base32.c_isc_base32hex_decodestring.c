
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_result_t ;
typedef int isc_buffer_t ;


 int base32_decodestring (char const*,int ,int *) ;
 int base32hex ;

isc_result_t
isc_base32hex_decodestring(const char *cstr, isc_buffer_t *target) {
 return (base32_decodestring(cstr, base32hex, target));
}
