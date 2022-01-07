
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char const* scheme; int * close; int * eof; int * load; int * open; } ;
typedef TYPE_1__ OSSL_STORE_LOADER ;


 int CRYPTO_THREAD_unlock (int ) ;
 int CRYPTO_THREAD_write_lock (int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int ERR_add_error_data (int,char*,char const*) ;
 int OSSL_STORE_F_OSSL_STORE_UNREGISTER_LOADER_INT ;
 int OSSL_STORE_R_UNREGISTERED_SCHEME ;
 int OSSL_STOREerr (int ,int ) ;
 int RUN_ONCE (int *,int ) ;
 int do_registry_init ;
 TYPE_1__* lh_OSSL_STORE_LOADER_delete (int ,TYPE_1__*) ;
 int loader_register ;
 int registry_init ;
 int registry_lock ;

OSSL_STORE_LOADER *ossl_store_unregister_loader_int(const char *scheme)
{
    OSSL_STORE_LOADER template;
    OSSL_STORE_LOADER *loader = ((void*)0);

    template.scheme = scheme;
    template.open = ((void*)0);
    template.load = ((void*)0);
    template.eof = ((void*)0);
    template.close = ((void*)0);

    if (!RUN_ONCE(&registry_init, do_registry_init)) {
        OSSL_STOREerr(OSSL_STORE_F_OSSL_STORE_UNREGISTER_LOADER_INT,
                      ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }
    CRYPTO_THREAD_write_lock(registry_lock);

    loader = lh_OSSL_STORE_LOADER_delete(loader_register, &template);

    if (loader == ((void*)0)) {
        OSSL_STOREerr(OSSL_STORE_F_OSSL_STORE_UNREGISTER_LOADER_INT,
                      OSSL_STORE_R_UNREGISTERED_SCHEME);
        ERR_add_error_data(2, "scheme=", scheme);
    }

    CRYPTO_THREAD_unlock(registry_lock);

    return loader;
}
