
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* bitcount; int* buffer; int state; } ;
typedef TYPE_1__ SHA512_CTX ;


 int BE_64_TO_8 (int*,int) ;
 int SHA512_BLOCK_LENGTH ;
 unsigned int SHA512_SHORT_BLOCK_LENGTH ;
 int SHA512_Transform (int ,int*) ;
 int memset (int*,int ,unsigned int) ;

void
SHA512_Pad(SHA512_CTX *context)
{
 unsigned int usedspace;

 usedspace = (context->bitcount[0] >> 3) % SHA512_BLOCK_LENGTH;
 if (usedspace > 0) {

  context->buffer[usedspace++] = 0x80;

  if (usedspace <= SHA512_SHORT_BLOCK_LENGTH) {

   memset(&context->buffer[usedspace], 0, SHA512_SHORT_BLOCK_LENGTH - usedspace);
  } else {
   if (usedspace < SHA512_BLOCK_LENGTH) {
    memset(&context->buffer[usedspace], 0, SHA512_BLOCK_LENGTH - usedspace);
   }

   SHA512_Transform(context->state, context->buffer);


   memset(context->buffer, 0, SHA512_BLOCK_LENGTH - 2);
  }
 } else {

  memset(context->buffer, 0, SHA512_SHORT_BLOCK_LENGTH);


  *context->buffer = 0x80;
 }

 BE_64_TO_8(&context->buffer[SHA512_SHORT_BLOCK_LENGTH],
     context->bitcount[1]);
 BE_64_TO_8(&context->buffer[SHA512_SHORT_BLOCK_LENGTH + 8],
     context->bitcount[0]);


 SHA512_Transform(context->state, context->buffer);


 usedspace = 0;
}
