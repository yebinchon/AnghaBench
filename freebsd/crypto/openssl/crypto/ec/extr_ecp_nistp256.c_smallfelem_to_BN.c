
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int smallfelem ;
typedef int felem_bytearray ;
typedef int b_out ;
typedef int BIGNUM ;


 int * BN_lebin2bn (int ,int,int *) ;
 int smallfelem_to_bin32 (int ,int const) ;

__attribute__((used)) static BIGNUM *smallfelem_to_BN(BIGNUM *out, const smallfelem in)
{
    felem_bytearray b_out;
    smallfelem_to_bin32(b_out, in);
    return BN_lebin2bn(b_out, sizeof(b_out), out);
}
