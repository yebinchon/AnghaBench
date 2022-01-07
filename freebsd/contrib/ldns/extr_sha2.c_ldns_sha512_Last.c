
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sha2_word64 ;
struct TYPE_5__ {int* bitcount; int* buffer; } ;
typedef TYPE_1__ ldns_sha512_CTX ;
struct TYPE_6__ {int* theChars; int* theLongs; } ;
typedef TYPE_2__ ldns_sha2_buffer_union ;


 int LDNS_SHA512_BLOCK_LENGTH ;
 int MEMSET_BZERO (int*,size_t) ;
 int REVERSE64 (int,int) ;
 size_t ldns_sha512_SHORT_BLOCK_LENGTH ;
 int ldns_sha512_Transform (TYPE_1__*,int *) ;

__attribute__((used)) static void ldns_sha512_Last(ldns_sha512_CTX* context) {
 size_t usedspace;
 ldns_sha2_buffer_union cast_var;

 usedspace = (context->bitcount[0] >> 3) % LDNS_SHA512_BLOCK_LENGTH;


 REVERSE64(context->bitcount[0],context->bitcount[0]);
 REVERSE64(context->bitcount[1],context->bitcount[1]);

 if (usedspace > 0) {

  context->buffer[usedspace++] = 0x80;

  if (usedspace <= ldns_sha512_SHORT_BLOCK_LENGTH) {

   MEMSET_BZERO(&context->buffer[usedspace], ldns_sha512_SHORT_BLOCK_LENGTH - usedspace);
  } else {
   if (usedspace < LDNS_SHA512_BLOCK_LENGTH) {
    MEMSET_BZERO(&context->buffer[usedspace], LDNS_SHA512_BLOCK_LENGTH - usedspace);
   }

   ldns_sha512_Transform(context, (sha2_word64*)context->buffer);


   MEMSET_BZERO(context->buffer, LDNS_SHA512_BLOCK_LENGTH - 2);
  }
 } else {

  MEMSET_BZERO(context->buffer, ldns_sha512_SHORT_BLOCK_LENGTH);


  *context->buffer = 0x80;
 }

 cast_var.theChars = context->buffer;
 cast_var.theLongs[ldns_sha512_SHORT_BLOCK_LENGTH / 8] = context->bitcount[1];
 cast_var.theLongs[ldns_sha512_SHORT_BLOCK_LENGTH / 8 + 1] = context->bitcount[0];


 ldns_sha512_Transform(context, (sha2_word64*)context->buffer);
}
