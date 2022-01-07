
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int alloc_len; int buffer; scalar_t__ secure; int attached; } ;
typedef TYPE_1__ RAND_POOL ;


 int OPENSSL_clear_free (int ,int ) ;
 int OPENSSL_free (TYPE_1__*) ;
 int OPENSSL_secure_clear_free (int ,int ) ;

void rand_pool_free(RAND_POOL *pool)
{
    if (pool == ((void*)0))
        return;







    if (!pool->attached) {
        if (pool->secure)
            OPENSSL_secure_clear_free(pool->buffer, pool->alloc_len);
        else
            OPENSSL_clear_free(pool->buffer, pool->alloc_len);
    }

    OPENSSL_free(pool);
}
