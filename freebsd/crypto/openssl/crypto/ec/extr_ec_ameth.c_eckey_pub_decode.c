
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_PUBKEY ;
typedef int X509_ALGOR ;
typedef int EVP_PKEY ;
typedef int EC_KEY ;


 int EC_F_ECKEY_PUB_DECODE ;
 int EC_KEY_free (int *) ;
 int EC_R_DECODE_ERROR ;
 int ECerr (int ,int ) ;
 int ERR_R_EC_LIB ;
 int EVP_PKEY_assign_EC_KEY (int *,int *) ;
 int X509_ALGOR_get0 (int *,int*,void const**,int *) ;
 int X509_PUBKEY_get0_param (int *,unsigned char const**,int*,int **,int *) ;
 int * eckey_type2param (int,void const*) ;
 int o2i_ECPublicKey (int **,unsigned char const**,int) ;

__attribute__((used)) static int eckey_pub_decode(EVP_PKEY *pkey, X509_PUBKEY *pubkey)
{
    const unsigned char *p = ((void*)0);
    const void *pval;
    int ptype, pklen;
    EC_KEY *eckey = ((void*)0);
    X509_ALGOR *palg;

    if (!X509_PUBKEY_get0_param(((void*)0), &p, &pklen, &palg, pubkey))
        return 0;
    X509_ALGOR_get0(((void*)0), &ptype, &pval, palg);

    eckey = eckey_type2param(ptype, pval);

    if (!eckey) {
        ECerr(EC_F_ECKEY_PUB_DECODE, ERR_R_EC_LIB);
        return 0;
    }


    if (!o2i_ECPublicKey(&eckey, &p, pklen)) {
        ECerr(EC_F_ECKEY_PUB_DECODE, EC_R_DECODE_ERROR);
        goto ecerr;
    }

    EVP_PKEY_assign_EC_KEY(pkey, eckey);
    return 1;

 ecerr:
    EC_KEY_free(eckey);
    return 0;
}
