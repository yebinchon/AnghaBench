
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_CTX ;
typedef int BN_BLINDING ;
typedef int BIGNUM ;


 int BN_BLINDING_convert_ex (int *,int *,int *,int *) ;

int BN_BLINDING_convert(BIGNUM *n, BN_BLINDING *b, BN_CTX *ctx)
{
    return BN_BLINDING_convert_ex(n, ((void*)0), b, ctx);
}
