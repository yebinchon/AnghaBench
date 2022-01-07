
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ keygen_info_count; TYPE_2__* data; } ;
struct TYPE_7__ {int type; } ;
struct TYPE_8__ {int * ctx; TYPE_1__ ktmp; } ;
typedef TYPE_2__ HMAC_PKEY_CTX ;
typedef TYPE_3__ EVP_PKEY_CTX ;


 int CRYPTO_F_PKEY_HMAC_INIT ;
 int CRYPTOerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int * HMAC_CTX_new () ;
 int OPENSSL_free (TYPE_2__*) ;
 TYPE_2__* OPENSSL_zalloc (int) ;
 int V_ASN1_OCTET_STRING ;

__attribute__((used)) static int pkey_hmac_init(EVP_PKEY_CTX *ctx)
{
    HMAC_PKEY_CTX *hctx;

    if ((hctx = OPENSSL_zalloc(sizeof(*hctx))) == ((void*)0)) {
        CRYPTOerr(CRYPTO_F_PKEY_HMAC_INIT, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    hctx->ktmp.type = V_ASN1_OCTET_STRING;
    hctx->ctx = HMAC_CTX_new();
    if (hctx->ctx == ((void*)0)) {
        OPENSSL_free(hctx);
        return 0;
    }

    ctx->data = hctx;
    ctx->keygen_info_count = 0;

    return 1;
}
