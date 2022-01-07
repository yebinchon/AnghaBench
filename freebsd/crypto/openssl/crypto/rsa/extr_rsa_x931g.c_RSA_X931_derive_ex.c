
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * iqmp; int * p; int * q; int * d; int * dmq1; int * dmp1; int * e; int * n; } ;
typedef TYPE_1__ RSA ;
typedef int BN_GENCB ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int BN_CTX_free (int *) ;
 int * BN_CTX_get (int *) ;
 int * BN_CTX_new () ;
 int BN_CTX_start (int *) ;
 int BN_X931_derive_prime_ex (int *,int *,int *,int const*,int const*,int const*,int const*,int *,int *) ;
 int BN_div (int *,int *,int *,int *,int *) ;
 int * BN_dup (int const*) ;
 int BN_gcd (int *,int *,int *,int *) ;
 int BN_mod (int *,int *,int *,int *) ;
 void* BN_mod_inverse (int *,int *,int *,int *) ;
 int BN_mul (int *,int *,int *,int *) ;
 void* BN_new () ;
 int BN_sub (int *,int *,int ) ;
 int BN_value_one () ;

int RSA_X931_derive_ex(RSA *rsa, BIGNUM *p1, BIGNUM *p2, BIGNUM *q1,
                       BIGNUM *q2, const BIGNUM *Xp1, const BIGNUM *Xp2,
                       const BIGNUM *Xp, const BIGNUM *Xq1, const BIGNUM *Xq2,
                       const BIGNUM *Xq, const BIGNUM *e, BN_GENCB *cb)
{
    BIGNUM *r0 = ((void*)0), *r1 = ((void*)0), *r2 = ((void*)0), *r3 = ((void*)0);
    BN_CTX *ctx = ((void*)0), *ctx2 = ((void*)0);
    int ret = 0;

    if (!rsa)
        goto err;

    ctx = BN_CTX_new();
    if (ctx == ((void*)0))
        goto err;
    BN_CTX_start(ctx);

    r0 = BN_CTX_get(ctx);
    r1 = BN_CTX_get(ctx);
    r2 = BN_CTX_get(ctx);
    r3 = BN_CTX_get(ctx);

    if (r3 == ((void*)0))
        goto err;
    if (!rsa->e) {
        rsa->e = BN_dup(e);
        if (!rsa->e)
            goto err;
    } else {
        e = rsa->e;
    }






    if (Xp && rsa->p == ((void*)0)) {
        rsa->p = BN_new();
        if (rsa->p == ((void*)0))
            goto err;

        if (!BN_X931_derive_prime_ex(rsa->p, p1, p2,
                                     Xp, Xp1, Xp2, e, ctx, cb))
            goto err;
    }

    if (Xq && rsa->q == ((void*)0)) {
        rsa->q = BN_new();
        if (rsa->q == ((void*)0))
            goto err;
        if (!BN_X931_derive_prime_ex(rsa->q, q1, q2,
                                     Xq, Xq1, Xq2, e, ctx, cb))
            goto err;
    }

    if (rsa->p == ((void*)0) || rsa->q == ((void*)0)) {
        BN_CTX_end(ctx);
        BN_CTX_free(ctx);
        return 2;
    }







    rsa->n = BN_new();
    if (rsa->n == ((void*)0))
        goto err;
    if (!BN_mul(rsa->n, rsa->p, rsa->q, ctx))
        goto err;


    if (!BN_sub(r1, rsa->p, BN_value_one()))
        goto err;
    if (!BN_sub(r2, rsa->q, BN_value_one()))
        goto err;
    if (!BN_mul(r0, r1, r2, ctx))
        goto err;

    if (!BN_gcd(r3, r1, r2, ctx))
        goto err;

    if (!BN_div(r0, ((void*)0), r0, r3, ctx))
        goto err;

    ctx2 = BN_CTX_new();
    if (ctx2 == ((void*)0))
        goto err;

    rsa->d = BN_mod_inverse(((void*)0), rsa->e, r0, ctx2);
    if (rsa->d == ((void*)0))
        goto err;


    rsa->dmp1 = BN_new();
    if (rsa->dmp1 == ((void*)0))
        goto err;
    if (!BN_mod(rsa->dmp1, rsa->d, r1, ctx))
        goto err;


    rsa->dmq1 = BN_new();
    if (rsa->dmq1 == ((void*)0))
        goto err;
    if (!BN_mod(rsa->dmq1, rsa->d, r2, ctx))
        goto err;


    rsa->iqmp = BN_mod_inverse(((void*)0), rsa->q, rsa->p, ctx2);
    if (rsa->iqmp == ((void*)0))
        goto err;

    ret = 1;
 err:
    BN_CTX_end(ctx);
    BN_CTX_free(ctx);
    BN_CTX_free(ctx2);

    return ret;

}
