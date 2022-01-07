
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int cache; int references; int * get_cert_methods; int * objs; int * param; int * lock; int ex_data; } ;
typedef TYPE_1__ X509_STORE ;


 int CRYPTO_EX_INDEX_X509_STORE ;
 int * CRYPTO_THREAD_lock_new () ;
 int CRYPTO_new_ex_data (int ,TYPE_1__*,int *) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 int X509_F_X509_STORE_NEW ;
 int X509_VERIFY_PARAM_free (int *) ;
 int * X509_VERIFY_PARAM_new () ;
 int X509err (int ,int ) ;
 int sk_X509_LOOKUP_free (int *) ;
 int * sk_X509_LOOKUP_new_null () ;
 int sk_X509_OBJECT_free (int *) ;
 int * sk_X509_OBJECT_new (int ) ;
 int x509_object_cmp ;

X509_STORE *X509_STORE_new(void)
{
    X509_STORE *ret = OPENSSL_zalloc(sizeof(*ret));

    if (ret == ((void*)0)) {
        X509err(X509_F_X509_STORE_NEW, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }
    if ((ret->objs = sk_X509_OBJECT_new(x509_object_cmp)) == ((void*)0)) {
        X509err(X509_F_X509_STORE_NEW, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    ret->cache = 1;
    if ((ret->get_cert_methods = sk_X509_LOOKUP_new_null()) == ((void*)0)) {
        X509err(X509_F_X509_STORE_NEW, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    if ((ret->param = X509_VERIFY_PARAM_new()) == ((void*)0)) {
        X509err(X509_F_X509_STORE_NEW, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    if (!CRYPTO_new_ex_data(CRYPTO_EX_INDEX_X509_STORE, ret, &ret->ex_data)) {
        X509err(X509_F_X509_STORE_NEW, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    ret->lock = CRYPTO_THREAD_lock_new();
    if (ret->lock == ((void*)0)) {
        X509err(X509_F_X509_STORE_NEW, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    ret->references = 1;
    return ret;

err:
    X509_VERIFY_PARAM_free(ret->param);
    sk_X509_OBJECT_free(ret->objs);
    sk_X509_LOOKUP_free(ret->get_cert_methods);
    OPENSSL_free(ret);
    return ((void*)0);
}
