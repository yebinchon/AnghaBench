
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int length; scalar_t__ data; } ;
struct TYPE_4__ {TYPE_3__ ktmp; int ctx; int md; } ;
typedef TYPE_1__ HMAC_PKEY_CTX ;
typedef int EVP_PKEY_CTX ;


 int ASN1_OCTET_STRING_set (TYPE_3__*,scalar_t__,int ) ;
 TYPE_1__* EVP_PKEY_CTX_get_data (int *) ;
 int HMAC_CTX_copy (int ,int ) ;
 int pkey_hmac_cleanup (int *) ;
 int pkey_hmac_init (int *) ;

__attribute__((used)) static int pkey_hmac_copy(EVP_PKEY_CTX *dst, EVP_PKEY_CTX *src)
{
    HMAC_PKEY_CTX *sctx, *dctx;


    if (!pkey_hmac_init(dst))
        return 0;
    sctx = EVP_PKEY_CTX_get_data(src);
    dctx = EVP_PKEY_CTX_get_data(dst);
    dctx->md = sctx->md;
    if (!HMAC_CTX_copy(dctx->ctx, sctx->ctx))
        goto err;
    if (sctx->ktmp.data) {
        if (!ASN1_OCTET_STRING_set(&dctx->ktmp,
                                   sctx->ktmp.data, sctx->ktmp.length))
            goto err;
    }
    return 1;
err:

    pkey_hmac_cleanup (dst);
    return 0;
}
