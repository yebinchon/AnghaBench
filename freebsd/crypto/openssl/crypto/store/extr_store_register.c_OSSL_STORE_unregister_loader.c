
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_STORE_LOADER ;


 int ossl_store_init_once () ;
 int * ossl_store_unregister_loader_int (char const*) ;

OSSL_STORE_LOADER *OSSL_STORE_unregister_loader(const char *scheme)
{
    if (!ossl_store_init_once())
        return 0;
    return ossl_store_unregister_loader_int(scheme);
}
