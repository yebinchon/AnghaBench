
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned char* buffer; size_t len; int attached; size_t min_len; size_t max_len; size_t alloc_len; size_t entropy; } ;
typedef TYPE_1__ RAND_POOL ;


 int ERR_R_MALLOC_FAILURE ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 int RAND_F_RAND_POOL_ATTACH ;
 int RANDerr (int ,int ) ;

RAND_POOL *rand_pool_attach(const unsigned char *buffer, size_t len,
                            size_t entropy)
{
    RAND_POOL *pool = OPENSSL_zalloc(sizeof(*pool));

    if (pool == ((void*)0)) {
        RANDerr(RAND_F_RAND_POOL_ATTACH, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }






    pool->buffer = (unsigned char *) buffer;
    pool->len = len;

    pool->attached = 1;

    pool->min_len = pool->max_len = pool->alloc_len = pool->len;
    pool->entropy = entropy;

    return pool;
}
