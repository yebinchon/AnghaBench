
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int isc_uint64_t ;
struct TYPE_4__ {int* bitcount; int* buffer; } ;
typedef TYPE_1__ isc_sha512_t ;


 int ISC_SHA512_BLOCK_LENGTH ;
 unsigned int ISC_SHA512_SHORT_BLOCK_LENGTH ;
 int REVERSE64 (int,int) ;
 int isc_sha512_transform (TYPE_1__*,int*) ;
 int memset (int*,int ,unsigned int) ;

void isc_sha512_last(isc_sha512_t *context) {
 unsigned int usedspace;

 usedspace = (unsigned int)((context->bitcount[0] >> 3) %
        ISC_SHA512_BLOCK_LENGTH);


 REVERSE64(context->bitcount[0],context->bitcount[0]);
 REVERSE64(context->bitcount[1],context->bitcount[1]);

 if (usedspace > 0) {

  context->buffer[usedspace++] = 0x80;

  if (usedspace <= ISC_SHA512_SHORT_BLOCK_LENGTH) {

   memset(&context->buffer[usedspace], 0,
          ISC_SHA512_SHORT_BLOCK_LENGTH - usedspace);
  } else {
   if (usedspace < ISC_SHA512_BLOCK_LENGTH) {
    memset(&context->buffer[usedspace], 0,
           ISC_SHA512_BLOCK_LENGTH - usedspace);
   }

   isc_sha512_transform(context,
         (isc_uint64_t*)context->buffer);


   memset(context->buffer, 0, ISC_SHA512_BLOCK_LENGTH - 2);
  }
 } else {

  memset(context->buffer, 0, ISC_SHA512_SHORT_BLOCK_LENGTH);


  *context->buffer = 0x80;
 }

 *(isc_uint64_t*)&context->buffer[ISC_SHA512_SHORT_BLOCK_LENGTH] = context->bitcount[1];
 *(isc_uint64_t*)&context->buffer[ISC_SHA512_SHORT_BLOCK_LENGTH+8] = context->bitcount[0];


 isc_sha512_transform(context, (isc_uint64_t*)context->buffer);
}
