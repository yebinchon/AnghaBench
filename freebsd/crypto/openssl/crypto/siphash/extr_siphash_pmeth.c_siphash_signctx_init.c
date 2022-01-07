
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ctx; } ;
typedef TYPE_1__ SIPHASH_PKEY_CTX ;
typedef int EVP_PKEY_CTX ;
typedef int EVP_MD_CTX ;


 int EVP_MD_CTX_FLAG_NO_INIT ;
 int EVP_MD_CTX_set_flags (int *,int ) ;
 int EVP_MD_CTX_set_update_fn (int *,int ) ;
 int EVP_PKEY_CTX_get0_pkey (int *) ;
 TYPE_1__* EVP_PKEY_CTX_get_data (int *) ;
 unsigned char* EVP_PKEY_get0_siphash (int ,size_t*) ;
 size_t SIPHASH_KEY_SIZE ;
 int SipHash_Init (int *,unsigned char const*,int ,int ) ;
 int int_update ;

__attribute__((used)) static int siphash_signctx_init(EVP_PKEY_CTX *ctx, EVP_MD_CTX *mctx)
{
    SIPHASH_PKEY_CTX *pctx = EVP_PKEY_CTX_get_data(ctx);
    const unsigned char* key;
    size_t len;

    key = EVP_PKEY_get0_siphash(EVP_PKEY_CTX_get0_pkey(ctx), &len);
    if (key == ((void*)0) || len != SIPHASH_KEY_SIZE)
        return 0;
    EVP_MD_CTX_set_flags(mctx, EVP_MD_CTX_FLAG_NO_INIT);
    EVP_MD_CTX_set_update_fn(mctx, int_update);
    return SipHash_Init(&pctx->ctx, key, 0, 0);
}
