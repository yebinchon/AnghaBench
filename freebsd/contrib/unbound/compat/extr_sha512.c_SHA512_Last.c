
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sha2_word64 ;
struct TYPE_5__ {int* theChars; int* theLongs; } ;
typedef TYPE_1__ ldns_sha2_buffer_union ;
struct TYPE_6__ {int* bitcount; int* buffer; } ;
typedef TYPE_2__ SHA512_CTX ;


 int MEMSET_BZERO (int*,size_t) ;
 int REVERSE64 (int,int) ;
 int SHA512_BLOCK_LENGTH ;
 size_t SHA512_SHORT_BLOCK_LENGTH ;
 int SHA512_Transform (TYPE_2__*,int *) ;

__attribute__((used)) static void SHA512_Last(SHA512_CTX* context) {
 size_t usedspace;
 ldns_sha2_buffer_union cast_var;

 usedspace = (context->bitcount[0] >> 3) % SHA512_BLOCK_LENGTH;


 REVERSE64(context->bitcount[0],context->bitcount[0]);
 REVERSE64(context->bitcount[1],context->bitcount[1]);

 if (usedspace > 0) {

  context->buffer[usedspace++] = 0x80;

  if (usedspace <= SHA512_SHORT_BLOCK_LENGTH) {

   MEMSET_BZERO(&context->buffer[usedspace], SHA512_SHORT_BLOCK_LENGTH - usedspace);
  } else {
   if (usedspace < SHA512_BLOCK_LENGTH) {
    MEMSET_BZERO(&context->buffer[usedspace], SHA512_BLOCK_LENGTH - usedspace);
   }

   SHA512_Transform(context, (sha2_word64*)context->buffer);


   MEMSET_BZERO(context->buffer, SHA512_BLOCK_LENGTH - 2);
  }
 } else {

  MEMSET_BZERO(context->buffer, SHA512_SHORT_BLOCK_LENGTH);


  *context->buffer = 0x80;
 }

 cast_var.theChars = context->buffer;
 cast_var.theLongs[SHA512_SHORT_BLOCK_LENGTH / 8] = context->bitcount[1];
 cast_var.theLongs[SHA512_SHORT_BLOCK_LENGTH / 8 + 1] = context->bitcount[0];


 SHA512_Transform(context, (sha2_word64*)context->buffer);
}
