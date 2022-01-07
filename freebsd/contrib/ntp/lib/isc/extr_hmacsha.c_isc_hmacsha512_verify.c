
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_hmacsha512_t ;
typedef int isc_boolean_t ;


 int ISC_SHA512_DIGESTLENGTH ;
 int ISC_TF (int) ;
 int REQUIRE (int) ;
 int isc_hmacsha512_sign (int *,unsigned char*,int) ;
 scalar_t__ isc_tsmemcmp (unsigned char*,unsigned char*,size_t) ;

isc_boolean_t
isc_hmacsha512_verify(isc_hmacsha512_t *ctx, unsigned char *digest, size_t len) {
 unsigned char newdigest[ISC_SHA512_DIGESTLENGTH];

 REQUIRE(len <= ISC_SHA512_DIGESTLENGTH);
 isc_hmacsha512_sign(ctx, newdigest, ISC_SHA512_DIGESTLENGTH);
 return (ISC_TF(isc_tsmemcmp(digest, newdigest, len) == 0));
}
