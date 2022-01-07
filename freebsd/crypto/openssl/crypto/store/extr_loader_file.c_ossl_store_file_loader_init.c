
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPENSSL_atexit (int ) ;
 int file_loader ;
 int ossl_store_register_loader_int (int *) ;
 int store_file_loader_deinit ;

int ossl_store_file_loader_init(void)
{
    int ret = ossl_store_register_loader_int(&file_loader);

    OPENSSL_atexit(store_file_loader_deinit);
    return ret;
}
