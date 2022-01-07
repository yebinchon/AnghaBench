
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ secure; int ex_data; int lock; int adin_pool; TYPE_1__* meth; } ;
struct TYPE_8__ {int (* uninstantiate ) (TYPE_2__*) ;} ;
typedef TYPE_2__ RAND_DRBG ;


 int CRYPTO_EX_INDEX_DRBG ;
 int CRYPTO_THREAD_lock_free (int ) ;
 int CRYPTO_free_ex_data (int ,TYPE_2__*,int *) ;
 int OPENSSL_clear_free (TYPE_2__*,int) ;
 int OPENSSL_secure_clear_free (TYPE_2__*,int) ;
 int rand_pool_free (int ) ;
 int stub1 (TYPE_2__*) ;

void RAND_DRBG_free(RAND_DRBG *drbg)
{
    if (drbg == ((void*)0))
        return;

    if (drbg->meth != ((void*)0))
        drbg->meth->uninstantiate(drbg);
    rand_pool_free(drbg->adin_pool);
    CRYPTO_THREAD_lock_free(drbg->lock);
    CRYPTO_free_ex_data(CRYPTO_EX_INDEX_DRBG, drbg, &drbg->ex_data);

    if (drbg->secure)
        OPENSSL_secure_clear_free(drbg, sizeof(*drbg));
    else
        OPENSSL_clear_free(drbg, sizeof(*drbg));
}
