
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int type; } ;
struct TYPE_6__ {TYPE_1__ ktmp; } ;
typedef TYPE_2__ POLY1305_PKEY_CTX ;
typedef int EVP_PKEY_CTX ;


 int CRYPTO_F_PKEY_POLY1305_INIT ;
 int CRYPTOerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int EVP_PKEY_CTX_set0_keygen_info (int *,int *,int ) ;
 int EVP_PKEY_CTX_set_data (int *,TYPE_2__*) ;
 TYPE_2__* OPENSSL_zalloc (int) ;
 int V_ASN1_OCTET_STRING ;

__attribute__((used)) static int pkey_poly1305_init(EVP_PKEY_CTX *ctx)
{
    POLY1305_PKEY_CTX *pctx;

    if ((pctx = OPENSSL_zalloc(sizeof(*pctx))) == ((void*)0)) {
        CRYPTOerr(CRYPTO_F_PKEY_POLY1305_INIT, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    pctx->ktmp.type = V_ASN1_OCTET_STRING;

    EVP_PKEY_CTX_set_data(ctx, pctx);
    EVP_PKEY_CTX_set0_keygen_info(ctx, ((void*)0), 0);
    return 1;
}
