
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int (* init ) (TYPE_1__*) ;} ;
struct TYPE_9__ {int references; TYPE_3__* meth; int * meth_data; int * lock; } ;
typedef int DSO_METHOD ;
typedef TYPE_1__ DSO ;


 int * CRYPTO_THREAD_lock_new () ;
 int DSO_F_DSO_NEW_METHOD ;
 TYPE_3__* DSO_METHOD_openssl () ;
 int DSO_free (TYPE_1__*) ;
 int DSOerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 TYPE_3__* default_DSO_meth ;
 int sk_void_free (int *) ;
 int * sk_void_new_null () ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static DSO *DSO_new_method(DSO_METHOD *meth)
{
    DSO *ret;

    if (default_DSO_meth == ((void*)0)) {





        default_DSO_meth = DSO_METHOD_openssl();
    }
    ret = OPENSSL_zalloc(sizeof(*ret));
    if (ret == ((void*)0)) {
        DSOerr(DSO_F_DSO_NEW_METHOD, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }
    ret->meth_data = sk_void_new_null();
    if (ret->meth_data == ((void*)0)) {

        DSOerr(DSO_F_DSO_NEW_METHOD, ERR_R_MALLOC_FAILURE);
        OPENSSL_free(ret);
        return ((void*)0);
    }
    ret->meth = default_DSO_meth;
    ret->references = 1;
    ret->lock = CRYPTO_THREAD_lock_new();
    if (ret->lock == ((void*)0)) {
        DSOerr(DSO_F_DSO_NEW_METHOD, ERR_R_MALLOC_FAILURE);
        sk_void_free(ret->meth_data);
        OPENSSL_free(ret);
        return ((void*)0);
    }

    if ((ret->meth->init != ((void*)0)) && !ret->meth->init(ret)) {
        DSO_free(ret);
        ret = ((void*)0);
    }

    return ret;
}
