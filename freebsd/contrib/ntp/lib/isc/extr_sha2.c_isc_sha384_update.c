
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_uint8_t ;
typedef int isc_sha512_t ;
typedef int isc_sha384_t ;


 int isc_sha512_update (int *,int const*,size_t) ;

void
isc_sha384_update(isc_sha384_t *context, const isc_uint8_t* data, size_t len) {
 isc_sha512_update((isc_sha512_t *)context, data, len);
}
