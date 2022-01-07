
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ length; int data; } ;
struct TYPE_10__ {TYPE_2__* pkey; TYPE_3__* data; } ;
struct TYPE_9__ {int ctx; } ;
struct TYPE_7__ {scalar_t__ ptr; } ;
struct TYPE_8__ {TYPE_1__ pkey; } ;
typedef TYPE_3__ POLY1305_PKEY_CTX ;
typedef TYPE_4__ EVP_PKEY_CTX ;
typedef int EVP_MD_CTX ;
typedef TYPE_5__ ASN1_OCTET_STRING ;


 int EVP_MD_CTX_FLAG_NO_INIT ;
 int EVP_MD_CTX_set_flags (int *,int ) ;
 int EVP_MD_CTX_set_update_fn (int *,int ) ;
 scalar_t__ POLY1305_KEY_SIZE ;
 int Poly1305_Init (int *,int ) ;
 int int_update ;

__attribute__((used)) static int poly1305_signctx_init(EVP_PKEY_CTX *ctx, EVP_MD_CTX *mctx)
{
    POLY1305_PKEY_CTX *pctx = ctx->data;
    ASN1_OCTET_STRING *key = (ASN1_OCTET_STRING *)ctx->pkey->pkey.ptr;

    if (key->length != POLY1305_KEY_SIZE)
        return 0;
    EVP_MD_CTX_set_flags(mctx, EVP_MD_CTX_FLAG_NO_INIT);
    EVP_MD_CTX_set_update_fn(mctx, int_update);
    Poly1305_Init(&pctx->ctx, key->data);
    return 1;
}
