
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY_CTX ;
typedef int EVP_MD_CTX ;


 int EVP_MD_CTX_FLAG_NO_INIT ;
 int EVP_MD_CTX_set_flags (int *,int ) ;
 int EVP_MD_CTX_set_update_fn (int *,int ) ;
 int int_update ;

__attribute__((used)) static int cmac_signctx_init(EVP_PKEY_CTX *ctx, EVP_MD_CTX *mctx)
{
    EVP_MD_CTX_set_flags(mctx, EVP_MD_CTX_FLAG_NO_INIT);
    EVP_MD_CTX_set_update_fn(mctx, int_update);
    return 1;
}
