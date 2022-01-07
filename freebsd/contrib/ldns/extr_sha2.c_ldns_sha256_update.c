
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sha2_word32 ;
typedef int const sha2_byte ;
struct TYPE_4__ {int bitcount; int * buffer; } ;
typedef TYPE_1__ ldns_sha256_CTX ;


 int LDNS_SHA256_BLOCK_LENGTH ;
 int MEMCPY_BCOPY (int *,int const*,size_t) ;
 int assert (int) ;
 int ldns_sha256_Transform (TYPE_1__*,int *) ;

void ldns_sha256_update(ldns_sha256_CTX* context, const sha2_byte *data, size_t len) {
 size_t freespace, usedspace;

 if (len == 0) {

  return;
 }


 assert(context != (ldns_sha256_CTX*)0 && data != (sha2_byte*)0);

 usedspace = (context->bitcount >> 3) % LDNS_SHA256_BLOCK_LENGTH;
 if (usedspace > 0) {

  freespace = LDNS_SHA256_BLOCK_LENGTH - usedspace;

  if (len >= freespace) {

   MEMCPY_BCOPY(&context->buffer[usedspace], data, freespace);
   context->bitcount += freespace << 3;
   len -= freespace;
   data += freespace;
   ldns_sha256_Transform(context, (sha2_word32*)context->buffer);
  } else {

   MEMCPY_BCOPY(&context->buffer[usedspace], data, len);
   context->bitcount += len << 3;

   usedspace = freespace = 0;
   return;
  }
 }
 while (len >= LDNS_SHA256_BLOCK_LENGTH) {

  ldns_sha256_Transform(context, (sha2_word32*)data);
  context->bitcount += LDNS_SHA256_BLOCK_LENGTH << 3;
  len -= LDNS_SHA256_BLOCK_LENGTH;
  data += LDNS_SHA256_BLOCK_LENGTH;
 }
 if (len > 0) {

  MEMCPY_BCOPY(context->buffer, data, len);
  context->bitcount += len << 3;
 }

 usedspace = freespace = 0;
}
