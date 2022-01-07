
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_CTX ;
typedef int const BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int BN_clear_free (int const*) ;
 int BN_free (int const*) ;
 int BN_mod_exp (int const*,int const*,int const*,int const*,int *) ;
 int BN_mod_mul (int const*,int const*,int const*,int const*,int *) ;
 int const* BN_new () ;

BIGNUM *SRP_Calc_server_key(const BIGNUM *A, const BIGNUM *v, const BIGNUM *u,
                            const BIGNUM *b, const BIGNUM *N)
{
    BIGNUM *tmp = ((void*)0), *S = ((void*)0);
    BN_CTX *bn_ctx;

    if (u == ((void*)0) || A == ((void*)0) || v == ((void*)0) || b == ((void*)0) || N == ((void*)0))
        return ((void*)0);

    if ((bn_ctx = BN_CTX_new()) == ((void*)0) || (tmp = BN_new()) == ((void*)0))
        goto err;



    if (!BN_mod_exp(tmp, v, u, N, bn_ctx))
        goto err;
    if (!BN_mod_mul(tmp, A, tmp, N, bn_ctx))
        goto err;

    S = BN_new();
    if (S != ((void*)0) && !BN_mod_exp(S, tmp, b, N, bn_ctx)) {
        BN_free(S);
        S = ((void*)0);
    }
 err:
    BN_CTX_free(bn_ctx);
    BN_clear_free(tmp);
    return S;
}
