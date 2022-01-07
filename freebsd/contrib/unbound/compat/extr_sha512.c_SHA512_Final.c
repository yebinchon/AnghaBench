
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sha2_word64 ;
typedef int sha2_byte ;
struct TYPE_5__ {int * state; } ;
typedef TYPE_1__ SHA512_CTX ;


 int MEMCPY_BCOPY (int *,int *,int ) ;
 int MEMSET_BZERO (TYPE_1__*,int) ;
 int REVERSE64 (int ,int ) ;
 int SHA512_DIGEST_LENGTH ;
 int SHA512_Last (TYPE_1__*) ;
 int assert (int) ;

void SHA512_Final(sha2_byte digest[], SHA512_CTX* context) {
 sha2_word64 *d = (sha2_word64*)digest;


 assert(context != (SHA512_CTX*)0);


 if (digest != (sha2_byte*)0) {
  SHA512_Last(context);



  {

   int j;
   for (j = 0; j < 8; j++) {
    REVERSE64(context->state[j],context->state[j]);
    *d++ = context->state[j];
   }
  }



 }


 MEMSET_BZERO(context, sizeof(SHA512_CTX));
}
