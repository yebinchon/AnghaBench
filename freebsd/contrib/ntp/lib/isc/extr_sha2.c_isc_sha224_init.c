
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ bitcount; int buffer; int state; } ;
typedef TYPE_1__ isc_sha256_t ;
typedef TYPE_1__ isc_sha224_t ;


 int ISC_SHA256_BLOCK_LENGTH ;
 int ISC_SHA256_DIGESTLENGTH ;
 int memcpy (int ,int ,int ) ;
 int memset (int ,int ,int ) ;
 int sha224_initial_hash_value ;

void
isc_sha224_init(isc_sha224_t *context) {
 if (context == (isc_sha256_t *)0) {
  return;
 }
 memcpy(context->state, sha224_initial_hash_value,
        ISC_SHA256_DIGESTLENGTH);
 memset(context->buffer, 0, ISC_SHA256_BLOCK_LENGTH);
 context->bitcount = 0;
}
