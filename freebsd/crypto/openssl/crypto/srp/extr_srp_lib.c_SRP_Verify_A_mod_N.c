
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 int SRP_Verify_B_mod_N (int const*,int const*) ;

int SRP_Verify_A_mod_N(const BIGNUM *A, const BIGNUM *N)
{

    return SRP_Verify_B_mod_N(A, N);
}
