
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int references; int save_parameters; int * lock; void* save_type; void* type; } ;
typedef TYPE_1__ EVP_PKEY ;


 int * CRYPTO_THREAD_lock_new () ;
 int ERR_R_MALLOC_FAILURE ;
 int EVP_F_EVP_PKEY_NEW ;
 void* EVP_PKEY_NONE ;
 int EVPerr (int ,int ) ;
 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* OPENSSL_zalloc (int) ;

EVP_PKEY *EVP_PKEY_new(void)
{
    EVP_PKEY *ret = OPENSSL_zalloc(sizeof(*ret));

    if (ret == ((void*)0)) {
        EVPerr(EVP_F_EVP_PKEY_NEW, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }
    ret->type = EVP_PKEY_NONE;
    ret->save_type = EVP_PKEY_NONE;
    ret->references = 1;
    ret->save_parameters = 1;
    ret->lock = CRYPTO_THREAD_lock_new();
    if (ret->lock == ((void*)0)) {
        EVPerr(EVP_F_EVP_PKEY_NEW, ERR_R_MALLOC_FAILURE);
        OPENSSL_free(ret);
        return ((void*)0);
    }
    return ret;
}
