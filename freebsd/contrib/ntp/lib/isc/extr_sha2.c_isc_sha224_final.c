
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_uint8_t ;
typedef int isc_sha256_t ;
typedef int isc_sha224_t ;


 int ISC_SHA224_DIGESTLENGTH ;
 int ISC_SHA256_DIGESTLENGTH ;
 int isc_sha256_final (int *,int *) ;
 int memcpy (int *,int *,int ) ;
 int memset (int *,int ,int) ;

void
isc_sha224_final(isc_uint8_t digest[], isc_sha224_t *context) {
 isc_uint8_t sha256_digest[ISC_SHA256_DIGESTLENGTH];
 isc_sha256_final(sha256_digest, (isc_sha256_t *)context);
 memcpy(digest, sha256_digest, ISC_SHA224_DIGESTLENGTH);
 memset(sha256_digest, 0, ISC_SHA256_DIGESTLENGTH);
}
