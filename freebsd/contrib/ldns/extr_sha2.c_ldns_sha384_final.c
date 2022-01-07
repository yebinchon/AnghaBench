
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sha2_word64 ;
typedef int sha2_byte ;
typedef int ldns_sha512_CTX ;
struct TYPE_4__ {int * state; } ;
typedef TYPE_1__ ldns_sha384_CTX ;


 int LDNS_SHA384_DIGEST_LENGTH ;
 int MEMCPY_BCOPY (int *,int *,int ) ;
 int MEMSET_BZERO (TYPE_1__*,int) ;
 int REVERSE64 (int ,int ) ;
 int assert (int) ;
 int ldns_sha512_Last (int *) ;

void ldns_sha384_final(sha2_byte digest[], ldns_sha384_CTX* context) {
 sha2_word64 *d = (sha2_word64*)digest;


 assert(context != (ldns_sha384_CTX*)0);


 if (digest != (sha2_byte*)0) {
  ldns_sha512_Last((ldns_sha512_CTX*)context);



  {

   int j;
   for (j = 0; j < 6; j++) {
    REVERSE64(context->state[j],context->state[j]);
    *d++ = context->state[j];
   }
  }



 }


 MEMSET_BZERO(context, sizeof(ldns_sha384_CTX));
}
