
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int shutdown; int references; int init; int * lock; int ex_data; TYPE_1__ const* method; } ;
struct TYPE_10__ {int (* create ) (TYPE_2__*) ;} ;
typedef TYPE_1__ BIO_METHOD ;
typedef TYPE_2__ BIO ;


 int BIO_F_BIO_NEW ;
 int BIOerr (int ,int ) ;
 int CRYPTO_EX_INDEX_BIO ;
 int CRYPTO_THREAD_lock_free (int *) ;
 int * CRYPTO_THREAD_lock_new () ;
 int CRYPTO_free_ex_data (int ,TYPE_2__*,int *) ;
 int CRYPTO_new_ex_data (int ,TYPE_2__*,int *) ;
 int ERR_R_INIT_FAIL ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (TYPE_2__*) ;
 TYPE_2__* OPENSSL_zalloc (int) ;
 int stub1 (TYPE_2__*) ;

BIO *BIO_new(const BIO_METHOD *method)
{
    BIO *bio = OPENSSL_zalloc(sizeof(*bio));

    if (bio == ((void*)0)) {
        BIOerr(BIO_F_BIO_NEW, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    bio->method = method;
    bio->shutdown = 1;
    bio->references = 1;

    if (!CRYPTO_new_ex_data(CRYPTO_EX_INDEX_BIO, bio, &bio->ex_data))
        goto err;

    bio->lock = CRYPTO_THREAD_lock_new();
    if (bio->lock == ((void*)0)) {
        BIOerr(BIO_F_BIO_NEW, ERR_R_MALLOC_FAILURE);
        CRYPTO_free_ex_data(CRYPTO_EX_INDEX_BIO, bio, &bio->ex_data);
        goto err;
    }

    if (method->create != ((void*)0) && !method->create(bio)) {
        BIOerr(BIO_F_BIO_NEW, ERR_R_INIT_FAIL);
        CRYPTO_free_ex_data(CRYPTO_EX_INDEX_BIO, bio, &bio->ex_data);
        CRYPTO_THREAD_lock_free(bio->lock);
        goto err;
    }
    if (method->create == ((void*)0))
        bio->init = 1;

    return bio;

err:
    OPENSSL_free(bio);
    return ((void*)0);
}
