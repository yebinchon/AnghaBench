
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * priv_key; int * pub_key; int group; } ;
typedef int EC_POINT ;
typedef TYPE_1__ EC_KEY ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int BN_free (int *) ;
 scalar_t__ BN_is_zero (int *) ;
 int * BN_new () ;
 int BN_priv_rand_range (int *,int const*) ;
 int * EC_GROUP_get0_order (int ) ;
 int EC_POINT_free (int *) ;
 int EC_POINT_mul (int ,int *,int *,int *,int *,int *) ;
 int * EC_POINT_new (int ) ;

int ec_key_simple_generate_key(EC_KEY *eckey)
{
    int ok = 0;
    BN_CTX *ctx = ((void*)0);
    BIGNUM *priv_key = ((void*)0);
    const BIGNUM *order = ((void*)0);
    EC_POINT *pub_key = ((void*)0);

    if ((ctx = BN_CTX_new()) == ((void*)0))
        goto err;

    if (eckey->priv_key == ((void*)0)) {
        priv_key = BN_new();
        if (priv_key == ((void*)0))
            goto err;
    } else
        priv_key = eckey->priv_key;

    order = EC_GROUP_get0_order(eckey->group);
    if (order == ((void*)0))
        goto err;

    do
        if (!BN_priv_rand_range(priv_key, order))
            goto err;
    while (BN_is_zero(priv_key)) ;

    if (eckey->pub_key == ((void*)0)) {
        pub_key = EC_POINT_new(eckey->group);
        if (pub_key == ((void*)0))
            goto err;
    } else
        pub_key = eckey->pub_key;

    if (!EC_POINT_mul(eckey->group, pub_key, priv_key, ((void*)0), ((void*)0), ctx))
        goto err;

    eckey->priv_key = priv_key;
    eckey->pub_key = pub_key;

    ok = 1;

 err:
    if (eckey->pub_key == ((void*)0))
        EC_POINT_free(pub_key);
    if (eckey->priv_key != priv_key)
        BN_free(priv_key);
    BN_CTX_free(ctx);
    return ok;
}
