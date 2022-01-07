
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int felem_bytearray ;
typedef int felem ;
typedef int b_out ;
typedef int BIGNUM ;


 int BN_bn2lebinpad (int const*,int ,int) ;
 scalar_t__ BN_is_negative (int const*) ;
 int EC_F_BN_TO_FELEM ;
 int EC_R_BIGNUM_OUT_OF_RANGE ;
 int ECerr (int ,int ) ;
 int bin32_to_felem (int ,int ) ;

__attribute__((used)) static int BN_to_felem(felem out, const BIGNUM *bn)
{
    felem_bytearray b_out;
    int num_bytes;

    if (BN_is_negative(bn)) {
        ECerr(EC_F_BN_TO_FELEM, EC_R_BIGNUM_OUT_OF_RANGE);
        return 0;
    }
    num_bytes = BN_bn2lebinpad(bn, b_out, sizeof(b_out));
    if (num_bytes < 0) {
        ECerr(EC_F_BN_TO_FELEM, EC_R_BIGNUM_OUT_OF_RANGE);
        return 0;
    }
    bin32_to_felem(out, b_out);
    return 1;
}
