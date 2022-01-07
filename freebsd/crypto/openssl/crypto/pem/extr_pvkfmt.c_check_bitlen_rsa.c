
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RSA ;
typedef int BIGNUM ;


 int BN_num_bits (int const*) ;
 int BN_num_bytes (int const*) ;
 unsigned int MS_RSA1MAGIC ;
 unsigned int MS_RSA2MAGIC ;
 int PEM_F_CHECK_BITLEN_RSA ;
 int PEM_R_UNSUPPORTED_KEY_COMPONENTS ;
 int PEMerr (int ,int ) ;
 int RSA_bits (int *) ;
 int RSA_get0_crt_params (int *,int const**,int const**,int const**) ;
 int RSA_get0_factors (int *,int const**,int const**) ;
 int RSA_get0_key (int *,int *,int const**,int const**) ;
 int RSA_size (int *) ;

__attribute__((used)) static int check_bitlen_rsa(RSA *rsa, int ispub, unsigned int *pmagic)
{
    int nbyte, hnbyte, bitlen;
    const BIGNUM *e;

    RSA_get0_key(rsa, ((void*)0), &e, ((void*)0));
    if (BN_num_bits(e) > 32)
        goto badkey;
    bitlen = RSA_bits(rsa);
    nbyte = RSA_size(rsa);
    hnbyte = (bitlen + 15) >> 4;
    if (ispub) {
        *pmagic = MS_RSA1MAGIC;
        return bitlen;
    } else {
        const BIGNUM *d, *p, *q, *iqmp, *dmp1, *dmq1;

        *pmagic = MS_RSA2MAGIC;




        RSA_get0_key(rsa, ((void*)0), ((void*)0), &d);
        if (BN_num_bytes(d) > nbyte)
            goto badkey;
        RSA_get0_factors(rsa, &p, &q);
        RSA_get0_crt_params(rsa, &dmp1, &dmq1, &iqmp);
        if ((BN_num_bytes(iqmp) > hnbyte)
            || (BN_num_bytes(p) > hnbyte)
            || (BN_num_bytes(q) > hnbyte)
            || (BN_num_bytes(dmp1) > hnbyte)
            || (BN_num_bytes(dmq1) > hnbyte))
            goto badkey;
    }
    return bitlen;
 badkey:
    PEMerr(PEM_F_CHECK_BITLEN_RSA, PEM_R_UNSUPPORTED_KEY_COMPONENTS);
    return 0;
}
