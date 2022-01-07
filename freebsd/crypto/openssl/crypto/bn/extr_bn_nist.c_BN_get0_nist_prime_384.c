
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 int const _bignum_nist_p_384 ;

const BIGNUM *BN_get0_nist_prime_384(void)
{
    return &_bignum_nist_p_384;
}
