
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ (* init ) (TYPE_1__*) ;} ;
struct TYPE_10__ {int references; int version; TYPE_5__* meth; int ex_data; int conv_form; int * engine; int * lock; } ;
typedef int ENGINE ;
typedef TYPE_1__ EC_KEY ;


 int CRYPTO_EX_INDEX_EC_KEY ;
 int * CRYPTO_THREAD_lock_new () ;
 int CRYPTO_new_ex_data (int ,TYPE_1__*,int *) ;
 int EC_F_EC_KEY_NEW_METHOD ;
 int EC_KEY_free (TYPE_1__*) ;
 TYPE_5__* EC_KEY_get_default_method () ;
 int ECerr (int ,int ) ;
 TYPE_5__* ENGINE_get_EC (int *) ;
 int * ENGINE_get_default_EC () ;
 int ENGINE_init (int *) ;
 int ERR_R_ENGINE_LIB ;
 int ERR_R_INIT_FAIL ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 int POINT_CONVERSION_UNCOMPRESSED ;
 scalar_t__ stub1 (TYPE_1__*) ;

EC_KEY *EC_KEY_new_method(ENGINE *engine)
{
    EC_KEY *ret = OPENSSL_zalloc(sizeof(*ret));

    if (ret == ((void*)0)) {
        ECerr(EC_F_EC_KEY_NEW_METHOD, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    ret->references = 1;
    ret->lock = CRYPTO_THREAD_lock_new();
    if (ret->lock == ((void*)0)) {
        ECerr(EC_F_EC_KEY_NEW_METHOD, ERR_R_MALLOC_FAILURE);
        OPENSSL_free(ret);
        return ((void*)0);
    }

    ret->meth = EC_KEY_get_default_method();

    if (engine != ((void*)0)) {
        if (!ENGINE_init(engine)) {
            ECerr(EC_F_EC_KEY_NEW_METHOD, ERR_R_ENGINE_LIB);
            goto err;
        }
        ret->engine = engine;
    } else
        ret->engine = ENGINE_get_default_EC();
    if (ret->engine != ((void*)0)) {
        ret->meth = ENGINE_get_EC(ret->engine);
        if (ret->meth == ((void*)0)) {
            ECerr(EC_F_EC_KEY_NEW_METHOD, ERR_R_ENGINE_LIB);
            goto err;
        }
    }


    ret->version = 1;
    ret->conv_form = POINT_CONVERSION_UNCOMPRESSED;

    if (!CRYPTO_new_ex_data(CRYPTO_EX_INDEX_EC_KEY, ret, &ret->ex_data)) {
        goto err;
    }

    if (ret->meth->init != ((void*)0) && ret->meth->init(ret) == 0) {
        ECerr(EC_F_EC_KEY_NEW_METHOD, ERR_R_INIT_FAIL);
        goto err;
    }
    return ret;

 err:
    EC_KEY_free(ret);
    return ((void*)0);
}
