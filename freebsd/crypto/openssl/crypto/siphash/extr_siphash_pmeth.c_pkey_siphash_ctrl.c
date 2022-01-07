
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ktmp; int ctx; } ;
typedef TYPE_1__ SIPHASH_PKEY_CTX ;
typedef int EVP_PKEY_CTX ;


 int ASN1_OCTET_STRING_set (int *,unsigned char const*,size_t) ;
 int ASN1_STRING_get0_data (int *) ;




 int EVP_PKEY_CTX_get0_pkey (int *) ;
 TYPE_1__* EVP_PKEY_CTX_get_data (int *) ;
 unsigned char* EVP_PKEY_get0_siphash (int ,size_t*) ;
 size_t SIPHASH_KEY_SIZE ;
 int SipHash_Init (int *,int ,int ,int ) ;
 int SipHash_set_hash_size (int *,int) ;

__attribute__((used)) static int pkey_siphash_ctrl(EVP_PKEY_CTX *ctx, int type, int p1, void *p2)
{
    SIPHASH_PKEY_CTX *pctx = EVP_PKEY_CTX_get_data(ctx);
    const unsigned char *key;
    size_t len;

    switch (type) {

    case 130:

        break;

    case 129:
        return SipHash_set_hash_size(&pctx->ctx, p1);

    case 128:
    case 131:
        if (type == 128) {

            key = p2;
            len = p1;
        } else {

            key = EVP_PKEY_get0_siphash(EVP_PKEY_CTX_get0_pkey(ctx), &len);
        }
        if (key == ((void*)0) || len != SIPHASH_KEY_SIZE ||
            !ASN1_OCTET_STRING_set(&pctx->ktmp, key, len))
            return 0;

        return SipHash_Init(&pctx->ctx, ASN1_STRING_get0_data(&pctx->ktmp),
                            0, 0);

    default:
        return -2;

    }
    return 1;
}
