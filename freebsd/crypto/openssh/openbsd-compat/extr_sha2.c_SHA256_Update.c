
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int8_t ;
struct TYPE_3__ {int bitcount; int const* buffer; int state; } ;
typedef TYPE_1__ SHA256_CTX ;


 int SHA256_BLOCK_LENGTH ;
 int SHA256_Transform (int ,int const*) ;
 int memcpy (int const*,int const*,size_t) ;

void
SHA256_Update(SHA256_CTX *context, const u_int8_t *data, size_t len)
{
 size_t freespace, usedspace;


 if (len == 0)
  return;

 usedspace = (context->bitcount >> 3) % SHA256_BLOCK_LENGTH;
 if (usedspace > 0) {

  freespace = SHA256_BLOCK_LENGTH - usedspace;

  if (len >= freespace) {

   memcpy(&context->buffer[usedspace], data, freespace);
   context->bitcount += freespace << 3;
   len -= freespace;
   data += freespace;
   SHA256_Transform(context->state, context->buffer);
  } else {

   memcpy(&context->buffer[usedspace], data, len);
   context->bitcount += len << 3;

   usedspace = freespace = 0;
   return;
  }
 }
 while (len >= SHA256_BLOCK_LENGTH) {

  SHA256_Transform(context->state, data);
  context->bitcount += SHA256_BLOCK_LENGTH << 3;
  len -= SHA256_BLOCK_LENGTH;
  data += SHA256_BLOCK_LENGTH;
 }
 if (len > 0) {

  memcpy(context->buffer, data, len);
  context->bitcount += len << 3;
 }

 usedspace = freespace = 0;
}
