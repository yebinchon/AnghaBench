
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int8_t ;
struct TYPE_3__ {int* bitcount; int const* buffer; int state; } ;
typedef TYPE_1__ SHA512_CTX ;


 int ADDINC128 (int*,size_t) ;
 int SHA512_BLOCK_LENGTH ;
 int SHA512_Transform (int ,int const*) ;
 int memcpy (int const*,int const*,size_t) ;

void
SHA512_Update(SHA512_CTX *context, const u_int8_t *data, size_t len)
{
 size_t freespace, usedspace;


 if (len == 0)
  return;

 usedspace = (context->bitcount[0] >> 3) % SHA512_BLOCK_LENGTH;
 if (usedspace > 0) {

  freespace = SHA512_BLOCK_LENGTH - usedspace;

  if (len >= freespace) {

   memcpy(&context->buffer[usedspace], data, freespace);
   ADDINC128(context->bitcount, freespace << 3);
   len -= freespace;
   data += freespace;
   SHA512_Transform(context->state, context->buffer);
  } else {

   memcpy(&context->buffer[usedspace], data, len);
   ADDINC128(context->bitcount, len << 3);

   usedspace = freespace = 0;
   return;
  }
 }
 while (len >= SHA512_BLOCK_LENGTH) {

  SHA512_Transform(context->state, data);
  ADDINC128(context->bitcount, SHA512_BLOCK_LENGTH << 3);
  len -= SHA512_BLOCK_LENGTH;
  data += SHA512_BLOCK_LENGTH;
 }
 if (len > 0) {

  memcpy(context->buffer, data, len);
  ADDINC128(context->bitcount, len << 3);
 }

 usedspace = freespace = 0;
}
