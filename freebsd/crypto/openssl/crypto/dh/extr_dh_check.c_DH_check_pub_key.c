
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int p; int * q; } ;
typedef TYPE_1__ DH ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int BN_CTX_free (int *) ;
 int * BN_CTX_get (int *) ;
 int * BN_CTX_new () ;
 int BN_CTX_start (int *) ;
 scalar_t__ BN_cmp (int const*,int *) ;
 int * BN_copy (int *,int ) ;
 int BN_is_one (int *) ;
 int BN_mod_exp (int *,int const*,int *,int ,int *) ;
 int BN_set_word (int *,int) ;
 int BN_sub_word (int *,int) ;
 int DH_CHECK_PUBKEY_INVALID ;
 int DH_CHECK_PUBKEY_TOO_LARGE ;
 int DH_CHECK_PUBKEY_TOO_SMALL ;

int DH_check_pub_key(const DH *dh, const BIGNUM *pub_key, int *ret)
{
    int ok = 0;
    BIGNUM *tmp = ((void*)0);
    BN_CTX *ctx = ((void*)0);

    *ret = 0;
    ctx = BN_CTX_new();
    if (ctx == ((void*)0))
        goto err;
    BN_CTX_start(ctx);
    tmp = BN_CTX_get(ctx);
    if (tmp == ((void*)0) || !BN_set_word(tmp, 1))
        goto err;
    if (BN_cmp(pub_key, tmp) <= 0)
        *ret |= DH_CHECK_PUBKEY_TOO_SMALL;
    if (BN_copy(tmp, dh->p) == ((void*)0) || !BN_sub_word(tmp, 1))
        goto err;
    if (BN_cmp(pub_key, tmp) >= 0)
        *ret |= DH_CHECK_PUBKEY_TOO_LARGE;

    if (dh->q != ((void*)0)) {

        if (!BN_mod_exp(tmp, pub_key, dh->q, dh->p, ctx))
            goto err;
        if (!BN_is_one(tmp))
            *ret |= DH_CHECK_PUBKEY_INVALID;
    }

    ok = 1;
 err:
    BN_CTX_end(ctx);
    BN_CTX_free(ctx);
    return ok;
}
