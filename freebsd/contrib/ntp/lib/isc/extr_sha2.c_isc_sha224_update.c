
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_uint8_t ;
typedef int isc_sha256_t ;
typedef int isc_sha224_t ;


 int isc_sha256_update (int *,int const*,size_t) ;

void
isc_sha224_update(isc_sha224_t *context, const isc_uint8_t* data, size_t len) {
 isc_sha256_update((isc_sha256_t *)context, data, len);
}
