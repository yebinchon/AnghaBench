
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_hmacmd5_t ;
typedef int isc_boolean_t ;


 int ISC_MD5_DIGESTLENGTH ;
 int isc_hmacmd5_verify2 (int *,unsigned char*,int ) ;

isc_boolean_t
isc_hmacmd5_verify(isc_hmacmd5_t *ctx, unsigned char *digest) {
 return (isc_hmacmd5_verify2(ctx, digest, ISC_MD5_DIGESTLENGTH));
}
