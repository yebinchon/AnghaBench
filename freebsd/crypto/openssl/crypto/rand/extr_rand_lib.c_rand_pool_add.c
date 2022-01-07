
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t max_len; size_t len; unsigned char const* buffer; scalar_t__ alloc_len; size_t entropy; } ;
typedef TYPE_1__ RAND_POOL ;


 int ERR_R_INTERNAL_ERROR ;
 int RAND_F_RAND_POOL_ADD ;
 int RAND_R_ENTROPY_INPUT_TOO_LONG ;
 int RANDerr (int ,int ) ;
 int memcpy (unsigned char const*,unsigned char const*,size_t) ;
 int rand_pool_grow (TYPE_1__*,size_t) ;

int rand_pool_add(RAND_POOL *pool,
                  const unsigned char *buffer, size_t len, size_t entropy)
{
    if (len > pool->max_len - pool->len) {
        RANDerr(RAND_F_RAND_POOL_ADD, RAND_R_ENTROPY_INPUT_TOO_LONG);
        return 0;
    }

    if (pool->buffer == ((void*)0)) {
        RANDerr(RAND_F_RAND_POOL_ADD, ERR_R_INTERNAL_ERROR);
        return 0;
    }

    if (len > 0) {
        if (pool->alloc_len > pool->len && pool->buffer + pool->len == buffer) {
            RANDerr(RAND_F_RAND_POOL_ADD, ERR_R_INTERNAL_ERROR);
            return 0;
        }







        if (!rand_pool_grow(pool, len))
            return 0;
        memcpy(pool->buffer + pool->len, buffer, len);
        pool->len += len;
        pool->entropy += entropy;
    }

    return 1;
}
