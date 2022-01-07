
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DSA ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int dsa_sign_setup (int *,int *,int **,int **,int *,int ) ;

__attribute__((used)) static int dsa_sign_setup_no_digest(DSA *dsa, BN_CTX *ctx_in,
                                    BIGNUM **kinvp, BIGNUM **rp)
{
    return dsa_sign_setup(dsa, ctx_in, kinvp, rp, ((void*)0), 0);
}
