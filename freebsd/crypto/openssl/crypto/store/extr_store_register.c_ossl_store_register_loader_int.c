
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* scheme; int * close; int * error; int * eof; int * load; int * open; } ;
typedef TYPE_1__ OSSL_STORE_LOADER ;


 int CRYPTO_THREAD_unlock (int ) ;
 int CRYPTO_THREAD_write_lock (int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int ERR_add_error_data (int,char*,char*) ;
 int OSSL_STORE_F_OSSL_STORE_REGISTER_LOADER_INT ;
 int OSSL_STORE_R_INVALID_SCHEME ;
 int OSSL_STORE_R_LOADER_INCOMPLETE ;
 int OSSL_STOREerr (int ,int ) ;
 int RUN_ONCE (int *,int ) ;
 int do_registry_init ;
 scalar_t__ lh_OSSL_STORE_LOADER_error (int *) ;
 int * lh_OSSL_STORE_LOADER_insert (int *,TYPE_1__*) ;
 int * lh_OSSL_STORE_LOADER_new (int ,int ) ;
 int * loader_register ;
 scalar_t__ ossl_isalpha (char const) ;
 scalar_t__ ossl_isdigit (char const) ;
 int registry_init ;
 int registry_lock ;
 int store_loader_cmp ;
 int store_loader_hash ;
 int * strchr (char*,char const) ;

int ossl_store_register_loader_int(OSSL_STORE_LOADER *loader)
{
    const char *scheme = loader->scheme;
    int ok = 0;







    if (ossl_isalpha(*scheme))
        while (*scheme != '\0'
               && (ossl_isalpha(*scheme)
                   || ossl_isdigit(*scheme)
                   || strchr("+-.", *scheme) != ((void*)0)))
            scheme++;
    if (*scheme != '\0') {
        OSSL_STOREerr(OSSL_STORE_F_OSSL_STORE_REGISTER_LOADER_INT,
                      OSSL_STORE_R_INVALID_SCHEME);
        ERR_add_error_data(2, "scheme=", loader->scheme);
        return 0;
    }


    if (loader->open == ((void*)0) || loader->load == ((void*)0) || loader->eof == ((void*)0)
        || loader->error == ((void*)0) || loader->close == ((void*)0)) {
        OSSL_STOREerr(OSSL_STORE_F_OSSL_STORE_REGISTER_LOADER_INT,
                      OSSL_STORE_R_LOADER_INCOMPLETE);
        return 0;
    }

    if (!RUN_ONCE(&registry_init, do_registry_init)) {
        OSSL_STOREerr(OSSL_STORE_F_OSSL_STORE_REGISTER_LOADER_INT,
                      ERR_R_MALLOC_FAILURE);
        return 0;
    }
    CRYPTO_THREAD_write_lock(registry_lock);

    if (loader_register == ((void*)0)) {
        loader_register = lh_OSSL_STORE_LOADER_new(store_loader_hash,
                                                   store_loader_cmp);
    }

    if (loader_register != ((void*)0)
        && (lh_OSSL_STORE_LOADER_insert(loader_register, loader) != ((void*)0)
            || lh_OSSL_STORE_LOADER_error(loader_register) == 0))
        ok = 1;

    CRYPTO_THREAD_unlock(registry_lock);

    return ok;
}
