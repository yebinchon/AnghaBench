
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {int * co_key; } ;
struct TYPE_12__ {TYPE_4__* peerkey; TYPE_2__* pkey; TYPE_6__* data; } ;
struct TYPE_10__ {int ec; } ;
struct TYPE_11__ {TYPE_3__ pkey; } ;
struct TYPE_8__ {int * ec; } ;
struct TYPE_9__ {TYPE_1__ pkey; } ;
typedef TYPE_5__ EVP_PKEY_CTX ;
typedef int EC_POINT ;
typedef TYPE_6__ EC_PKEY_CTX ;
typedef int EC_KEY ;
typedef int EC_GROUP ;


 int ECDH_compute_key (unsigned char*,size_t,int const*,int *,int ) ;
 int EC_F_PKEY_EC_DERIVE ;
 int EC_GROUP_get_degree (int const*) ;
 int * EC_KEY_get0_group (int *) ;
 int * EC_KEY_get0_public_key (int ) ;
 int EC_R_KEYS_NOT_SET ;
 int ECerr (int ,int ) ;

__attribute__((used)) static int pkey_ec_derive(EVP_PKEY_CTX *ctx, unsigned char *key, size_t *keylen)
{
    int ret;
    size_t outlen;
    const EC_POINT *pubkey = ((void*)0);
    EC_KEY *eckey;
    EC_PKEY_CTX *dctx = ctx->data;
    if (!ctx->pkey || !ctx->peerkey) {
        ECerr(EC_F_PKEY_EC_DERIVE, EC_R_KEYS_NOT_SET);
        return 0;
    }

    eckey = dctx->co_key ? dctx->co_key : ctx->pkey->pkey.ec;

    if (!key) {
        const EC_GROUP *group;
        group = EC_KEY_get0_group(eckey);
        *keylen = (EC_GROUP_get_degree(group) + 7) / 8;
        return 1;
    }
    pubkey = EC_KEY_get0_public_key(ctx->peerkey->pkey.ec);






    outlen = *keylen;

    ret = ECDH_compute_key(key, outlen, pubkey, eckey, 0);
    if (ret <= 0)
        return 0;
    *keylen = ret;
    return 1;
}
