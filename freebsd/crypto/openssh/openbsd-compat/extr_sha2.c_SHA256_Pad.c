
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bitcount; int* buffer; int state; } ;
typedef TYPE_1__ SHA256_CTX ;


 int BE_64_TO_8 (int*,int) ;
 int SHA256_BLOCK_LENGTH ;
 unsigned int SHA256_SHORT_BLOCK_LENGTH ;
 int SHA256_Transform (int ,int*) ;
 int memset (int*,int ,unsigned int) ;

void
SHA256_Pad(SHA256_CTX *context)
{
 unsigned int usedspace;

 usedspace = (context->bitcount >> 3) % SHA256_BLOCK_LENGTH;
 if (usedspace > 0) {

  context->buffer[usedspace++] = 0x80;

  if (usedspace <= SHA256_SHORT_BLOCK_LENGTH) {

   memset(&context->buffer[usedspace], 0,
       SHA256_SHORT_BLOCK_LENGTH - usedspace);
  } else {
   if (usedspace < SHA256_BLOCK_LENGTH) {
    memset(&context->buffer[usedspace], 0,
        SHA256_BLOCK_LENGTH - usedspace);
   }

   SHA256_Transform(context->state, context->buffer);


   memset(context->buffer, 0, SHA256_SHORT_BLOCK_LENGTH);
  }
 } else {

  memset(context->buffer, 0, SHA256_SHORT_BLOCK_LENGTH);


  *context->buffer = 0x80;
 }

 BE_64_TO_8(&context->buffer[SHA256_SHORT_BLOCK_LENGTH],
     context->bitcount);


 SHA256_Transform(context->state, context->buffer);


 usedspace = 0;
}
