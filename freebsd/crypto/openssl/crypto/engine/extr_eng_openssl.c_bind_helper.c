
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ENGINE ;


 int DH_get_default_method () ;
 int DSA_get_default_method () ;
 int EC_KEY_OpenSSL () ;
 int ENGINE_set_DH (int *,int ) ;
 int ENGINE_set_DSA (int *,int ) ;
 int ENGINE_set_EC (int *,int ) ;
 int ENGINE_set_RAND (int *,int ) ;
 int ENGINE_set_RSA (int *,int ) ;
 int ENGINE_set_ciphers (int *,int ) ;
 int ENGINE_set_destroy_function (int *,int ) ;
 int ENGINE_set_digests (int *,int ) ;
 int ENGINE_set_id (int *,int ) ;
 int ENGINE_set_load_privkey_function (int *,int ) ;
 int ENGINE_set_name (int *,int ) ;
 int ENGINE_set_pkey_meths (int *,int ) ;
 int RAND_OpenSSL () ;
 int RSA_get_default_method () ;
 int engine_openssl_id ;
 int engine_openssl_name ;
 int openssl_ciphers ;
 int openssl_destroy ;
 int openssl_digests ;
 int openssl_load_privkey ;
 int ossl_pkey_meths ;
 int ossl_register_hmac_meth () ;

__attribute__((used)) static int bind_helper(ENGINE *e)
{
    if (!ENGINE_set_id(e, engine_openssl_id)
        || !ENGINE_set_name(e, engine_openssl_name)
        || !ENGINE_set_destroy_function(e, openssl_destroy)


        || !ENGINE_set_RSA(e, RSA_get_default_method())


        || !ENGINE_set_DSA(e, DSA_get_default_method())


        || !ENGINE_set_EC(e, EC_KEY_OpenSSL())


        || !ENGINE_set_DH(e, DH_get_default_method())

        || !ENGINE_set_RAND(e, RAND_OpenSSL())
        )
        return 0;





    return 1;
}
