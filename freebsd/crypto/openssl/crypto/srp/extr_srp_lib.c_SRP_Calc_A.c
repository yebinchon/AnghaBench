
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int BN_free (int *) ;
 int BN_mod_exp (int *,int const*,int const*,int const*,int *) ;
 int * BN_new () ;

BIGNUM *SRP_Calc_A(const BIGNUM *a, const BIGNUM *N, const BIGNUM *g)
{
    BN_CTX *bn_ctx;
    BIGNUM *A = ((void*)0);

    if (a == ((void*)0) || N == ((void*)0) || g == ((void*)0) || (bn_ctx = BN_CTX_new()) == ((void*)0))
        return ((void*)0);

    if ((A = BN_new()) != ((void*)0) && !BN_mod_exp(A, g, a, N, bn_ctx)) {
        BN_free(A);
        A = ((void*)0);
    }
    BN_CTX_free(bn_ctx);
    return A;
}
