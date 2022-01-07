
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int (* init ) (TYPE_1__*) ;int flags; } ;
struct TYPE_10__ {int references; TYPE_5__* meth; int ex_data; int flags; int * engine; int * lock; } ;
typedef int ENGINE ;
typedef TYPE_1__ DH ;


 int CRYPTO_EX_INDEX_DH ;
 int * CRYPTO_THREAD_lock_new () ;
 int CRYPTO_new_ex_data (int ,TYPE_1__*,int *) ;
 int DH_F_DH_NEW_METHOD ;
 int DH_free (TYPE_1__*) ;
 TYPE_5__* DH_get_default_method () ;
 int DHerr (int ,int ) ;
 TYPE_5__* ENGINE_get_DH (int *) ;
 int * ENGINE_get_default_DH () ;
 int ENGINE_init (int *) ;
 int ERR_R_ENGINE_LIB ;
 int ERR_R_INIT_FAIL ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 int stub1 (TYPE_1__*) ;

DH *DH_new_method(ENGINE *engine)
{
    DH *ret = OPENSSL_zalloc(sizeof(*ret));

    if (ret == ((void*)0)) {
        DHerr(DH_F_DH_NEW_METHOD, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    ret->references = 1;
    ret->lock = CRYPTO_THREAD_lock_new();
    if (ret->lock == ((void*)0)) {
        DHerr(DH_F_DH_NEW_METHOD, ERR_R_MALLOC_FAILURE);
        OPENSSL_free(ret);
        return ((void*)0);
    }

    ret->meth = DH_get_default_method();

    ret->flags = ret->meth->flags;
    if (engine) {
        if (!ENGINE_init(engine)) {
            DHerr(DH_F_DH_NEW_METHOD, ERR_R_ENGINE_LIB);
            goto err;
        }
        ret->engine = engine;
    } else
        ret->engine = ENGINE_get_default_DH();
    if (ret->engine) {
        ret->meth = ENGINE_get_DH(ret->engine);
        if (ret->meth == ((void*)0)) {
            DHerr(DH_F_DH_NEW_METHOD, ERR_R_ENGINE_LIB);
            goto err;
        }
    }


    ret->flags = ret->meth->flags;

    if (!CRYPTO_new_ex_data(CRYPTO_EX_INDEX_DH, ret, &ret->ex_data))
        goto err;

    if ((ret->meth->init != ((void*)0)) && !ret->meth->init(ret)) {
        DHerr(DH_F_DH_NEW_METHOD, ERR_R_INIT_FAIL);
        goto err;
    }

    return ret;

 err:
    DH_free(ret);
    return ((void*)0);
}
