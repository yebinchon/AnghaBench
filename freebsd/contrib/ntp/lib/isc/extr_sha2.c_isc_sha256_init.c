
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ bitcount; int buffer; int state; } ;
typedef TYPE_1__ isc_sha256_t ;


 int ISC_SHA256_BLOCK_LENGTH ;
 int ISC_SHA256_DIGESTLENGTH ;
 int memcpy (int ,int ,int ) ;
 int memset (int ,int ,int ) ;
 int sha256_initial_hash_value ;

void
isc_sha256_init(isc_sha256_t *context) {
 if (context == (isc_sha256_t *)0) {
  return;
 }
 memcpy(context->state, sha256_initial_hash_value,
        ISC_SHA256_DIGESTLENGTH);
 memset(context->buffer, 0, ISC_SHA256_BLOCK_LENGTH);
 context->bitcount = 0;
}
