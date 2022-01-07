
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int lock; int ex_data; TYPE_1__* method; int * callback_ex; int * callback; int references; } ;
struct TYPE_9__ {int (* destroy ) (TYPE_2__*) ;} ;
typedef TYPE_2__ BIO ;


 int BIO_CB_FREE ;
 scalar_t__ CRYPTO_DOWN_REF (int *,int*,int ) ;
 int CRYPTO_EX_INDEX_BIO ;
 int CRYPTO_THREAD_lock_free (int ) ;
 int CRYPTO_free_ex_data (int ,TYPE_2__*,int *) ;
 int OPENSSL_free (TYPE_2__*) ;
 int REF_ASSERT_ISNT (int) ;
 int REF_PRINT_COUNT (char*,TYPE_2__*) ;
 scalar_t__ bio_call_callback (TYPE_2__*,int ,int *,int ,int ,long,long,int *) ;
 int stub1 (TYPE_2__*) ;

int BIO_free(BIO *a)
{
    int ret;

    if (a == ((void*)0))
        return 0;

    if (CRYPTO_DOWN_REF(&a->references, &ret, a->lock) <= 0)
        return 0;

    REF_PRINT_COUNT("BIO", a);
    if (ret > 0)
        return 1;
    REF_ASSERT_ISNT(ret < 0);

    if (a->callback != ((void*)0) || a->callback_ex != ((void*)0)) {
        ret = (int)bio_call_callback(a, BIO_CB_FREE, ((void*)0), 0, 0, 0L, 1L, ((void*)0));
        if (ret <= 0)
            return ret;
    }

    if ((a->method != ((void*)0)) && (a->method->destroy != ((void*)0)))
        a->method->destroy(a);

    CRYPTO_free_ex_data(CRYPTO_EX_INDEX_BIO, a, &a->ex_data);

    CRYPTO_THREAD_lock_free(a->lock);

    OPENSSL_free(a);

    return 1;
}
