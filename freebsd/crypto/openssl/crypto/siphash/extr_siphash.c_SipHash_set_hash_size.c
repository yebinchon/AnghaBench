
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t hash_size; int v1; } ;
typedef TYPE_1__ SIPHASH ;


 size_t SIPHASH_MAX_DIGEST_SIZE ;
 size_t SIPHASH_MIN_DIGEST_SIZE ;
 void* siphash_adjust_hash_size (size_t) ;

int SipHash_set_hash_size(SIPHASH *ctx, size_t hash_size)
{
    hash_size = siphash_adjust_hash_size(hash_size);
    if (hash_size != SIPHASH_MIN_DIGEST_SIZE
        && hash_size != SIPHASH_MAX_DIGEST_SIZE)
        return 0;







    ctx->hash_size = siphash_adjust_hash_size(ctx->hash_size);


    if ((size_t)ctx->hash_size != hash_size) {
        ctx->v1 ^= 0xee;
        ctx->hash_size = hash_size;
    }
    return 1;
}
