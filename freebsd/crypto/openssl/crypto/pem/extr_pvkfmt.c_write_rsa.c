
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RSA ;
typedef int BIGNUM ;


 int RSA_bits (int *) ;
 int RSA_get0_crt_params (int *,int const**,int const**,int const**) ;
 int RSA_get0_factors (int *,int const**,int const**) ;
 int RSA_get0_key (int *,int const**,int const**,int const**) ;
 int RSA_size (int *) ;
 int write_lebn (unsigned char**,int const*,int) ;

__attribute__((used)) static void write_rsa(unsigned char **out, RSA *rsa, int ispub)
{
    int nbyte, hnbyte;
    const BIGNUM *n, *d, *e, *p, *q, *iqmp, *dmp1, *dmq1;

    nbyte = RSA_size(rsa);
    hnbyte = (RSA_bits(rsa) + 15) >> 4;
    RSA_get0_key(rsa, &n, &e, &d);
    write_lebn(out, e, 4);
    write_lebn(out, n, nbyte);
    if (ispub)
        return;
    RSA_get0_factors(rsa, &p, &q);
    RSA_get0_crt_params(rsa, &dmp1, &dmq1, &iqmp);
    write_lebn(out, p, hnbyte);
    write_lebn(out, q, hnbyte);
    write_lebn(out, dmp1, hnbyte);
    write_lebn(out, dmq1, hnbyte);
    write_lebn(out, iqmp, hnbyte);
    write_lebn(out, d, nbyte);
}
