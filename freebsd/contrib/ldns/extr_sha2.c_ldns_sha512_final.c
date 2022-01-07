
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sha2_word64 ;
typedef int sha2_byte ;
struct TYPE_5__ {int * state; } ;
typedef TYPE_1__ ldns_sha512_CTX ;


 int LDNS_SHA512_DIGEST_LENGTH ;
 int MEMCPY_BCOPY (int *,int *,int ) ;
 int MEMSET_BZERO (TYPE_1__*,int) ;
 int REVERSE64 (int ,int ) ;
 int assert (int) ;
 int ldns_sha512_Last (TYPE_1__*) ;

void ldns_sha512_final(sha2_byte digest[], ldns_sha512_CTX* context) {
 sha2_word64 *d = (sha2_word64*)digest;


 assert(context != (ldns_sha512_CTX*)0);


 if (digest != (sha2_byte*)0) {
  ldns_sha512_Last(context);



  {

   int j;
   for (j = 0; j < 8; j++) {
    REVERSE64(context->state[j],context->state[j]);
    *d++ = context->state[j];
   }
  }



 }


 MEMSET_BZERO(context, sizeof(ldns_sha512_CTX));
}
