
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t max_len; size_t len; unsigned char* buffer; } ;
typedef TYPE_1__ RAND_POOL ;


 int ERR_R_INTERNAL_ERROR ;
 int RAND_F_RAND_POOL_ADD_BEGIN ;
 int RAND_R_RANDOM_POOL_OVERFLOW ;
 int RANDerr (int ,int ) ;
 int rand_pool_grow (TYPE_1__*,size_t) ;

unsigned char *rand_pool_add_begin(RAND_POOL *pool, size_t len)
{
    if (len == 0)
        return ((void*)0);

    if (len > pool->max_len - pool->len) {
        RANDerr(RAND_F_RAND_POOL_ADD_BEGIN, RAND_R_RANDOM_POOL_OVERFLOW);
        return ((void*)0);
    }

    if (pool->buffer == ((void*)0)) {
        RANDerr(RAND_F_RAND_POOL_ADD_BEGIN, ERR_R_INTERNAL_ERROR);
        return ((void*)0);
    }
    if (!rand_pool_grow(pool, len))
        return ((void*)0);

    return pool->buffer + pool->len;
}
