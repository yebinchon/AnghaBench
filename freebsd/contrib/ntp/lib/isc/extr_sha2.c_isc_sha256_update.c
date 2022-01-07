
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int const isc_uint8_t ;
typedef int isc_uint32_t ;
struct TYPE_4__ {int bitcount; int * buffer; } ;
typedef TYPE_1__ isc_sha256_t ;


 int ISC_SHA256_BLOCK_LENGTH ;
 int POST (unsigned int) ;
 int REQUIRE (int) ;
 int isc_sha256_transform (TYPE_1__*,int *) ;
 int memcpy (int *,int const*,size_t) ;

void
isc_sha256_update(isc_sha256_t *context, const isc_uint8_t *data, size_t len) {
 unsigned int freespace, usedspace;

 if (len == 0U) {

  return;
 }


 REQUIRE(context != (isc_sha256_t *)0 && data != (isc_uint8_t*)0);

 usedspace = (unsigned int)((context->bitcount >> 3) %
       ISC_SHA256_BLOCK_LENGTH);
 if (usedspace > 0) {

  freespace = ISC_SHA256_BLOCK_LENGTH - usedspace;

  if (len >= freespace) {

   memcpy(&context->buffer[usedspace], data, freespace);
   context->bitcount += freespace << 3;
   len -= freespace;
   data += freespace;
   isc_sha256_transform(context,
          (isc_uint32_t*)context->buffer);
  } else {

   memcpy(&context->buffer[usedspace], data, len);
   context->bitcount += len << 3;

   usedspace = freespace = 0;

   POST(usedspace); POST(freespace);
   return;
  }
 }
 while (len >= ISC_SHA256_BLOCK_LENGTH) {

  memcpy(context->buffer, data, ISC_SHA256_BLOCK_LENGTH);
  isc_sha256_transform(context, (isc_uint32_t*)context->buffer);
  context->bitcount += ISC_SHA256_BLOCK_LENGTH << 3;
  len -= ISC_SHA256_BLOCK_LENGTH;
  data += ISC_SHA256_BLOCK_LENGTH;
 }
 if (len > 0U) {

  memcpy(context->buffer, data, len);
  context->bitcount += len << 3;
 }

 usedspace = freespace = 0;

 POST(usedspace); POST(freespace);
}
