
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CTLOG_STORE_LOAD_CTX ;


 int CT_F_CTLOG_STORE_LOAD_CTX_NEW ;
 int CTerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int * OPENSSL_zalloc (int) ;

__attribute__((used)) static CTLOG_STORE_LOAD_CTX *ctlog_store_load_ctx_new(void)
{
    CTLOG_STORE_LOAD_CTX *ctx = OPENSSL_zalloc(sizeof(*ctx));

    if (ctx == ((void*)0))
        CTerr(CT_F_CTLOG_STORE_LOAD_CTX_NEW, ERR_R_MALLOC_FAILURE);

    return ctx;
}
