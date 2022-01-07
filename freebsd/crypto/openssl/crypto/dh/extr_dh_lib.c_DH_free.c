
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int priv_key; int pub_key; int counter; struct TYPE_9__* seed; int j; int q; int g; int p; int lock; int ex_data; int engine; TYPE_1__* meth; int references; } ;
struct TYPE_8__ {int (* finish ) (TYPE_2__*) ;} ;
typedef TYPE_2__ DH ;


 int BN_clear_free (int ) ;
 int CRYPTO_DOWN_REF (int *,int*,int ) ;
 int CRYPTO_EX_INDEX_DH ;
 int CRYPTO_THREAD_lock_free (int ) ;
 int CRYPTO_free_ex_data (int ,TYPE_2__*,int *) ;
 int ENGINE_finish (int ) ;
 int OPENSSL_free (TYPE_2__*) ;
 int REF_ASSERT_ISNT (int) ;
 int REF_PRINT_COUNT (char*,TYPE_2__*) ;
 int stub1 (TYPE_2__*) ;

void DH_free(DH *r)
{
    int i;

    if (r == ((void*)0))
        return;

    CRYPTO_DOWN_REF(&r->references, &i, r->lock);
    REF_PRINT_COUNT("DH", r);
    if (i > 0)
        return;
    REF_ASSERT_ISNT(i < 0);

    if (r->meth != ((void*)0) && r->meth->finish != ((void*)0))
        r->meth->finish(r);

    ENGINE_finish(r->engine);


    CRYPTO_free_ex_data(CRYPTO_EX_INDEX_DH, r, &r->ex_data);

    CRYPTO_THREAD_lock_free(r->lock);

    BN_clear_free(r->p);
    BN_clear_free(r->g);
    BN_clear_free(r->q);
    BN_clear_free(r->j);
    OPENSSL_free(r->seed);
    BN_clear_free(r->counter);
    BN_clear_free(r->pub_key);
    BN_clear_free(r->priv_key);
    OPENSSL_free(r);
}
