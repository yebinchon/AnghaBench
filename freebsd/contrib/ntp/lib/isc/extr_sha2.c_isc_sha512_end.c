
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_uint8_t ;
typedef int isc_sha512_t ;


 int EVP_MD_CTX_cleanup (int*) ;
 int ISC_SHA512_DIGESTLENGTH ;
 int REQUIRE (int) ;
 int isc_sha512_final (int*,int*) ;
 int memset (int*,int ,int) ;
 void** sha2_hex_digits ;

char *
isc_sha512_end(isc_sha512_t *context, char buffer[]) {
 isc_uint8_t digest[ISC_SHA512_DIGESTLENGTH], *d = digest;
 unsigned int i;


 REQUIRE(context != (isc_sha512_t *)0);

 if (buffer != (char*)0) {
  isc_sha512_final(digest, context);

  for (i = 0; i < ISC_SHA512_DIGESTLENGTH; i++) {
   *buffer++ = sha2_hex_digits[(*d & 0xf0) >> 4];
   *buffer++ = sha2_hex_digits[*d & 0x0f];
   d++;
  }
  *buffer = (char)0;
 } else {



  memset(context, 0, sizeof(*context));

 }
 memset(digest, 0, ISC_SHA512_DIGESTLENGTH);
 return buffer;
}
