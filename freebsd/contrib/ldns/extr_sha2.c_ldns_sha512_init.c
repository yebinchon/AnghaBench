
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* bitcount; int buffer; int state; } ;
typedef TYPE_1__ ldns_sha512_CTX ;


 int LDNS_SHA512_BLOCK_LENGTH ;
 int LDNS_SHA512_DIGEST_LENGTH ;
 int MEMCPY_BCOPY (int ,int ,int ) ;
 int MEMSET_BZERO (int ,int ) ;
 int sha512_initial_hash_value ;

void ldns_sha512_init(ldns_sha512_CTX* context) {
 if (context == (ldns_sha512_CTX*)0) {
  return;
 }
 MEMCPY_BCOPY(context->state, sha512_initial_hash_value, LDNS_SHA512_DIGEST_LENGTH);
 MEMSET_BZERO(context->buffer, LDNS_SHA512_BLOCK_LENGTH);
 context->bitcount[0] = context->bitcount[1] = 0;
}
