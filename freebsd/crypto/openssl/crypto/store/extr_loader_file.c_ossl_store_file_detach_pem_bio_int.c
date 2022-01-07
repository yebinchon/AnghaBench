
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_STORE_LOADER_CTX ;


 int OSSL_STORE_LOADER_CTX_free (int *) ;

int ossl_store_file_detach_pem_bio_int(OSSL_STORE_LOADER_CTX *ctx)
{
    OSSL_STORE_LOADER_CTX_free(ctx);
    return 1;
}
