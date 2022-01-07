
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int OPENSSL_INIT_SETTINGS ;


 int CRYPTO_F_OPENSSL_INIT_CRYPTO ;
 int CRYPTO_THREAD_unlock (int ) ;
 int CRYPTO_THREAD_write_lock (int ) ;
 int CRYPTOerr (int ,int ) ;
 int ENGINE_register_all_complete () ;
 int ERR_R_INIT_FAIL ;
 int OPENSSL_INIT_ADD_ALL_CIPHERS ;
 int OPENSSL_INIT_ADD_ALL_DIGESTS ;
 int OPENSSL_INIT_ASYNC ;
 int OPENSSL_INIT_ATFORK ;
 int OPENSSL_INIT_BASE_ONLY ;
 int OPENSSL_INIT_ENGINE_AFALG ;
 int OPENSSL_INIT_ENGINE_ALL_BUILTIN ;
 int OPENSSL_INIT_ENGINE_CAPI ;
 int OPENSSL_INIT_ENGINE_CRYPTODEV ;
 int OPENSSL_INIT_ENGINE_DYNAMIC ;
 int OPENSSL_INIT_ENGINE_OPENSSL ;
 int OPENSSL_INIT_ENGINE_PADLOCK ;
 int OPENSSL_INIT_ENGINE_RDRAND ;
 int OPENSSL_INIT_LOAD_CONFIG ;
 int OPENSSL_INIT_LOAD_CRYPTO_STRINGS ;
 int OPENSSL_INIT_NO_ADD_ALL_CIPHERS ;
 int OPENSSL_INIT_NO_ADD_ALL_DIGESTS ;
 int OPENSSL_INIT_NO_ATEXIT ;
 int OPENSSL_INIT_NO_LOAD_CONFIG ;
 int OPENSSL_INIT_NO_LOAD_CRYPTO_STRINGS ;
 int OPENSSL_INIT_ZLIB ;
 int RUN_ONCE (int *,int ) ;
 int RUN_ONCE_ALT (int *,int ,int ) ;
 int add_all_ciphers ;
 int add_all_digests ;
 int async ;
 int base ;
 int const* conf_settings ;
 int config ;
 int engine_afalg ;
 int engine_capi ;
 int engine_devcrypto ;
 int engine_dynamic ;
 int engine_openssl ;
 int engine_padlock ;
 int engine_rdrand ;
 int init_lock ;
 int load_crypto_nodelete ;
 int load_crypto_strings ;
 int openssl_init_fork_handlers () ;
 int ossl_init_add_all_ciphers ;
 int ossl_init_add_all_digests ;
 int ossl_init_async ;
 int ossl_init_base ;
 int ossl_init_config ;
 int ossl_init_engine_afalg ;
 int ossl_init_engine_capi ;
 int ossl_init_engine_devcrypto ;
 int ossl_init_engine_dynamic ;
 int ossl_init_engine_openssl ;
 int ossl_init_engine_padlock ;
 int ossl_init_engine_rdrand ;
 int ossl_init_load_crypto_nodelete ;
 int ossl_init_load_crypto_strings ;
 int ossl_init_no_add_all_ciphers ;
 int ossl_init_no_add_all_digests ;
 int ossl_init_no_config ;
 int ossl_init_no_load_crypto_strings ;
 int ossl_init_no_register_atexit ;
 int ossl_init_register_atexit ;
 int ossl_init_zlib ;
 int register_atexit ;
 scalar_t__ stopped ;
 int zlib ;

int OPENSSL_init_crypto(uint64_t opts, const OPENSSL_INIT_SETTINGS *settings)
{
    if (stopped) {
        if (!(opts & OPENSSL_INIT_BASE_ONLY))
            CRYPTOerr(CRYPTO_F_OPENSSL_INIT_CRYPTO, ERR_R_INIT_FAIL);
        return 0;
    }
    if (!RUN_ONCE(&base, ossl_init_base))
        return 0;
    if (opts & OPENSSL_INIT_BASE_ONLY)
        return 1;







    if ((opts & OPENSSL_INIT_NO_ATEXIT) != 0) {
        if (!RUN_ONCE_ALT(&register_atexit, ossl_init_no_register_atexit,
                          ossl_init_register_atexit))
            return 0;
    } else if (!RUN_ONCE(&register_atexit, ossl_init_register_atexit)) {
        return 0;
    }

    if (!RUN_ONCE(&load_crypto_nodelete, ossl_init_load_crypto_nodelete))
        return 0;

    if ((opts & OPENSSL_INIT_NO_LOAD_CRYPTO_STRINGS)
            && !RUN_ONCE_ALT(&load_crypto_strings,
                             ossl_init_no_load_crypto_strings,
                             ossl_init_load_crypto_strings))
        return 0;

    if ((opts & OPENSSL_INIT_LOAD_CRYPTO_STRINGS)
            && !RUN_ONCE(&load_crypto_strings, ossl_init_load_crypto_strings))
        return 0;

    if ((opts & OPENSSL_INIT_NO_ADD_ALL_CIPHERS)
            && !RUN_ONCE_ALT(&add_all_ciphers, ossl_init_no_add_all_ciphers,
                             ossl_init_add_all_ciphers))
        return 0;

    if ((opts & OPENSSL_INIT_ADD_ALL_CIPHERS)
            && !RUN_ONCE(&add_all_ciphers, ossl_init_add_all_ciphers))
        return 0;

    if ((opts & OPENSSL_INIT_NO_ADD_ALL_DIGESTS)
            && !RUN_ONCE_ALT(&add_all_digests, ossl_init_no_add_all_digests,
                             ossl_init_add_all_digests))
        return 0;

    if ((opts & OPENSSL_INIT_ADD_ALL_DIGESTS)
            && !RUN_ONCE(&add_all_digests, ossl_init_add_all_digests))
        return 0;

    if ((opts & OPENSSL_INIT_ATFORK)
            && !openssl_init_fork_handlers())
        return 0;

    if ((opts & OPENSSL_INIT_NO_LOAD_CONFIG)
            && !RUN_ONCE_ALT(&config, ossl_init_no_config, ossl_init_config))
        return 0;

    if (opts & OPENSSL_INIT_LOAD_CONFIG) {
        int ret;
        CRYPTO_THREAD_write_lock(init_lock);
        conf_settings = settings;
        ret = RUN_ONCE(&config, ossl_init_config);
        conf_settings = ((void*)0);
        CRYPTO_THREAD_unlock(init_lock);
        if (ret <= 0)
            return 0;
    }

    if ((opts & OPENSSL_INIT_ASYNC)
            && !RUN_ONCE(&async, ossl_init_async))
        return 0;


    if ((opts & OPENSSL_INIT_ENGINE_OPENSSL)
            && !RUN_ONCE(&engine_openssl, ossl_init_engine_openssl))
        return 0;

    if ((opts & OPENSSL_INIT_ENGINE_CRYPTODEV)
            && !RUN_ONCE(&engine_devcrypto, ossl_init_engine_devcrypto))
        return 0;


    if ((opts & OPENSSL_INIT_ENGINE_RDRAND)
            && !RUN_ONCE(&engine_rdrand, ossl_init_engine_rdrand))
        return 0;

    if ((opts & OPENSSL_INIT_ENGINE_DYNAMIC)
            && !RUN_ONCE(&engine_dynamic, ossl_init_engine_dynamic))
        return 0;


    if ((opts & OPENSSL_INIT_ENGINE_PADLOCK)
            && !RUN_ONCE(&engine_padlock, ossl_init_engine_padlock))
        return 0;







    if ((opts & OPENSSL_INIT_ENGINE_AFALG)
            && !RUN_ONCE(&engine_afalg, ossl_init_engine_afalg))
        return 0;


    if (opts & (OPENSSL_INIT_ENGINE_ALL_BUILTIN
                | OPENSSL_INIT_ENGINE_OPENSSL
                | OPENSSL_INIT_ENGINE_AFALG)) {
        ENGINE_register_all_complete();
    }



    if ((opts & OPENSSL_INIT_ZLIB)
            && !RUN_ONCE(&zlib, ossl_init_zlib))
        return 0;


    return 1;
}
