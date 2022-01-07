
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ kdf_type; size_t kdf_outlen; int kdf_md; int kdf_ukmlen; int kdf_ukm; int kdf_oid; scalar_t__ pad; } ;
struct TYPE_14__ {TYPE_5__* peerkey; TYPE_2__* pkey; TYPE_7__* data; } ;
struct TYPE_12__ {TYPE_3__* dh; } ;
struct TYPE_13__ {TYPE_4__ pkey; } ;
struct TYPE_11__ {int * pub_key; } ;
struct TYPE_9__ {int * dh; } ;
struct TYPE_10__ {TYPE_1__ pkey; } ;
typedef TYPE_6__ EVP_PKEY_CTX ;
typedef TYPE_7__ DH_PKEY_CTX ;
typedef int DH ;
typedef int BIGNUM ;


 int DH_F_PKEY_DH_DERIVE ;
 int DH_KDF_X9_42 (unsigned char*,size_t,unsigned char*,size_t,int ,int ,int ,int ) ;
 int DH_R_KEYS_NOT_SET ;
 int DH_compute_key (unsigned char*,int *,int *) ;
 scalar_t__ DH_compute_key_padded (unsigned char*,int *,int *) ;
 size_t DH_size (int *) ;
 int DHerr (int ,int ) ;
 scalar_t__ EVP_PKEY_DH_KDF_NONE ;
 scalar_t__ EVP_PKEY_DH_KDF_X9_42 ;
 int OPENSSL_clear_free (unsigned char*,size_t) ;
 unsigned char* OPENSSL_malloc (size_t) ;

__attribute__((used)) static int pkey_dh_derive(EVP_PKEY_CTX *ctx, unsigned char *key,
                          size_t *keylen)
{
    int ret;
    DH *dh;
    DH_PKEY_CTX *dctx = ctx->data;
    BIGNUM *dhpub;
    if (!ctx->pkey || !ctx->peerkey) {
        DHerr(DH_F_PKEY_DH_DERIVE, DH_R_KEYS_NOT_SET);
        return 0;
    }
    dh = ctx->pkey->pkey.dh;
    dhpub = ctx->peerkey->pkey.dh->pub_key;
    if (dctx->kdf_type == EVP_PKEY_DH_KDF_NONE) {
        if (key == ((void*)0)) {
            *keylen = DH_size(dh);
            return 1;
        }
        if (dctx->pad)
            ret = DH_compute_key_padded(key, dhpub, dh);
        else
            ret = DH_compute_key(key, dhpub, dh);
        if (ret < 0)
            return ret;
        *keylen = ret;
        return 1;
    }

    else if (dctx->kdf_type == EVP_PKEY_DH_KDF_X9_42) {

        unsigned char *Z = ((void*)0);
        size_t Zlen = 0;
        if (!dctx->kdf_outlen || !dctx->kdf_oid)
            return 0;
        if (key == ((void*)0)) {
            *keylen = dctx->kdf_outlen;
            return 1;
        }
        if (*keylen != dctx->kdf_outlen)
            return 0;
        ret = 0;
        Zlen = DH_size(dh);
        Z = OPENSSL_malloc(Zlen);
        if (Z == ((void*)0)) {
            goto err;
        }
        if (DH_compute_key_padded(Z, dhpub, dh) <= 0)
            goto err;
        if (!DH_KDF_X9_42(key, *keylen, Z, Zlen, dctx->kdf_oid,
                          dctx->kdf_ukm, dctx->kdf_ukmlen, dctx->kdf_md))
            goto err;
        *keylen = dctx->kdf_outlen;
        ret = 1;
 err:
        OPENSSL_clear_free(Z, Zlen);
        return ret;
    }

    return 0;
}
