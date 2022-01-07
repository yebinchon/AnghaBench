
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int flags; int p; int * priv_key; TYPE_1__* meth; int lock; int method_mont_p; } ;
struct TYPE_6__ {int (* bn_mod_exp ) (TYPE_2__*,int *,int const*,int *,int ,int *,int *) ;} ;
typedef TYPE_2__ DH ;
typedef int BN_MONT_CTX ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int BN_CTX_free (int *) ;
 int * BN_CTX_get (int *) ;
 int * BN_CTX_new () ;
 int BN_CTX_start (int *) ;
 int BN_FLG_CONSTTIME ;
 int * BN_MONT_CTX_set_locked (int *,int ,int ,int *) ;
 int BN_bn2bin (int *,unsigned char*) ;
 scalar_t__ BN_num_bits (int ) ;
 int BN_set_flags (int *,int ) ;
 int DH_FLAG_CACHE_MONT_P ;
 int DH_F_COMPUTE_KEY ;
 int DH_R_INVALID_PUBKEY ;
 int DH_R_MODULUS_TOO_LARGE ;
 int DH_R_NO_PRIVATE_VALUE ;
 int DH_check_pub_key (TYPE_2__*,int const*,int*) ;
 int DHerr (int ,int ) ;
 int ERR_R_BN_LIB ;
 scalar_t__ OPENSSL_DH_MAX_MODULUS_BITS ;
 int stub1 (TYPE_2__*,int *,int const*,int *,int ,int *,int *) ;

__attribute__((used)) static int compute_key(unsigned char *key, const BIGNUM *pub_key, DH *dh)
{
    BN_CTX *ctx = ((void*)0);
    BN_MONT_CTX *mont = ((void*)0);
    BIGNUM *tmp;
    int ret = -1;
    int check_result;

    if (BN_num_bits(dh->p) > OPENSSL_DH_MAX_MODULUS_BITS) {
        DHerr(DH_F_COMPUTE_KEY, DH_R_MODULUS_TOO_LARGE);
        goto err;
    }

    ctx = BN_CTX_new();
    if (ctx == ((void*)0))
        goto err;
    BN_CTX_start(ctx);
    tmp = BN_CTX_get(ctx);
    if (tmp == ((void*)0))
        goto err;

    if (dh->priv_key == ((void*)0)) {
        DHerr(DH_F_COMPUTE_KEY, DH_R_NO_PRIVATE_VALUE);
        goto err;
    }

    if (dh->flags & DH_FLAG_CACHE_MONT_P) {
        mont = BN_MONT_CTX_set_locked(&dh->method_mont_p,
                                      dh->lock, dh->p, ctx);
        BN_set_flags(dh->priv_key, BN_FLG_CONSTTIME);
        if (!mont)
            goto err;
    }

    if (!DH_check_pub_key(dh, pub_key, &check_result) || check_result) {
        DHerr(DH_F_COMPUTE_KEY, DH_R_INVALID_PUBKEY);
        goto err;
    }

    if (!dh->
        meth->bn_mod_exp(dh, tmp, pub_key, dh->priv_key, dh->p, ctx, mont)) {
        DHerr(DH_F_COMPUTE_KEY, ERR_R_BN_LIB);
        goto err;
    }

    ret = BN_bn2bin(tmp, key);
 err:
    BN_CTX_end(ctx);
    BN_CTX_free(ctx);
    return ret;
}
