
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_hmacmd5_t ;
typedef int isc_boolean_t ;


 int ISC_MD5_DIGESTLENGTH ;
 int ISC_TF (int) ;
 int REQUIRE (int) ;
 int isc_hmacmd5_sign (int *,unsigned char*) ;
 scalar_t__ isc_tsmemcmp (unsigned char*,unsigned char*,size_t) ;

isc_boolean_t
isc_hmacmd5_verify2(isc_hmacmd5_t *ctx, unsigned char *digest, size_t len) {
 unsigned char newdigest[ISC_MD5_DIGESTLENGTH];

 REQUIRE(len <= ISC_MD5_DIGESTLENGTH);
 isc_hmacmd5_sign(ctx, newdigest);
 return (ISC_TF(isc_tsmemcmp(digest, newdigest, len) == 0));
}
