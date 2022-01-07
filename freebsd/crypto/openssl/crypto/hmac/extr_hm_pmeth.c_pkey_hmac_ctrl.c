
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int length; int data; } ;
struct TYPE_10__ {int engine; TYPE_2__* pkey; TYPE_3__* data; } ;
struct TYPE_9__ {void* md; int ctx; int ktmp; } ;
struct TYPE_7__ {scalar_t__ ptr; } ;
struct TYPE_8__ {TYPE_1__ pkey; } ;
typedef TYPE_3__ HMAC_PKEY_CTX ;
typedef TYPE_4__ EVP_PKEY_CTX ;
typedef TYPE_5__ ASN1_OCTET_STRING ;


 int ASN1_OCTET_STRING_set (int *,void*,int) ;



 int HMAC_Init_ex (int ,int ,int ,void*,int ) ;

__attribute__((used)) static int pkey_hmac_ctrl(EVP_PKEY_CTX *ctx, int type, int p1, void *p2)
{
    HMAC_PKEY_CTX *hctx = ctx->data;
    ASN1_OCTET_STRING *key;
    switch (type) {

    case 128:
        if ((!p2 && p1 > 0) || (p1 < -1))
            return 0;
        if (!ASN1_OCTET_STRING_set(&hctx->ktmp, p2, p1))
            return 0;
        break;

    case 129:
        hctx->md = p2;
        break;

    case 130:
        key = (ASN1_OCTET_STRING *)ctx->pkey->pkey.ptr;
        if (!HMAC_Init_ex(hctx->ctx, key->data, key->length, hctx->md,
                          ctx->engine))
            return 0;
        break;

    default:
        return -2;

    }
    return 1;
}
