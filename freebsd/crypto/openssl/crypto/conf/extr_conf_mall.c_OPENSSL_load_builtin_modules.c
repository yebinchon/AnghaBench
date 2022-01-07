
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASN1_add_oid_module () ;
 int ASN1_add_stable_module () ;
 int ENGINE_add_conf_module () ;
 int EVP_add_alg_module () ;
 int conf_add_ssl_module () ;

void OPENSSL_load_builtin_modules(void)
{

    ASN1_add_oid_module();
    ASN1_add_stable_module();

    ENGINE_add_conf_module();

    EVP_add_alg_module();
    conf_add_ssl_module();
}
