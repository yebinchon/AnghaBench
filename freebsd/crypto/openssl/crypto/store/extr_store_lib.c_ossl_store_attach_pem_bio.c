
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UI_METHOD ;
struct TYPE_7__ {int * post_process_data; int * post_process; void* ui_data; int const* ui_method; int * loader_ctx; TYPE_1__ const* loader; } ;
struct TYPE_6__ {int (* close ) (int *) ;} ;
typedef int OSSL_STORE_LOADER_CTX ;
typedef TYPE_1__ OSSL_STORE_LOADER ;
typedef TYPE_2__ OSSL_STORE_CTX ;
typedef int BIO ;


 int ERR_R_MALLOC_FAILURE ;
 TYPE_2__* OPENSSL_zalloc (int) ;
 int OSSL_STORE_F_OSSL_STORE_ATTACH_PEM_BIO ;
 int OSSL_STOREerr (int ,int ) ;
 int * ossl_store_file_attach_pem_bio_int (int *) ;
 TYPE_1__* ossl_store_get0_loader_int (char*) ;
 int stub1 (int *) ;

OSSL_STORE_CTX *ossl_store_attach_pem_bio(BIO *bp, const UI_METHOD *ui_method,
                                          void *ui_data)
{
    OSSL_STORE_CTX *ctx = ((void*)0);
    const OSSL_STORE_LOADER *loader = ((void*)0);
    OSSL_STORE_LOADER_CTX *loader_ctx = ((void*)0);

    if ((loader = ossl_store_get0_loader_int("file")) == ((void*)0)
        || ((loader_ctx = ossl_store_file_attach_pem_bio_int(bp)) == ((void*)0)))
        goto done;
    if ((ctx = OPENSSL_zalloc(sizeof(*ctx))) == ((void*)0)) {
        OSSL_STOREerr(OSSL_STORE_F_OSSL_STORE_ATTACH_PEM_BIO,
                     ERR_R_MALLOC_FAILURE);
        goto done;
    }

    ctx->loader = loader;
    ctx->loader_ctx = loader_ctx;
    loader_ctx = ((void*)0);
    ctx->ui_method = ui_method;
    ctx->ui_data = ui_data;
    ctx->post_process = ((void*)0);
    ctx->post_process_data = ((void*)0);

 done:
    if (loader_ctx != ((void*)0))





        (void)loader->close(loader_ctx);
    return ctx;
}
