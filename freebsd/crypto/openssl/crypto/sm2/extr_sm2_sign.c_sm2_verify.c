
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EC_KEY ;
typedef int ECDSA_SIG ;
typedef int BIGNUM ;


 int * BN_bin2bn (unsigned char const*,int,int *) ;
 int BN_free (int *) ;
 int ECDSA_SIG_free (int *) ;
 int * ECDSA_SIG_new () ;
 int ERR_R_BN_LIB ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (unsigned char*) ;
 int SM2_F_SM2_VERIFY ;
 int SM2_R_INVALID_ENCODING ;
 int SM2err (int ,int ) ;
 int * d2i_ECDSA_SIG (int **,unsigned char const**,int) ;
 int i2d_ECDSA_SIG (int *,unsigned char**) ;
 scalar_t__ memcmp (unsigned char const*,unsigned char*,int) ;
 int sm2_sig_verify (int *,int *,int *) ;

int sm2_verify(const unsigned char *dgst, int dgstlen,
               const unsigned char *sig, int sig_len, EC_KEY *eckey)
{
    ECDSA_SIG *s = ((void*)0);
    BIGNUM *e = ((void*)0);
    const unsigned char *p = sig;
    unsigned char *der = ((void*)0);
    int derlen = -1;
    int ret = -1;

    s = ECDSA_SIG_new();
    if (s == ((void*)0)) {
        SM2err(SM2_F_SM2_VERIFY, ERR_R_MALLOC_FAILURE);
        goto done;
    }
    if (d2i_ECDSA_SIG(&s, &p, sig_len) == ((void*)0)) {
        SM2err(SM2_F_SM2_VERIFY, SM2_R_INVALID_ENCODING);
        goto done;
    }

    derlen = i2d_ECDSA_SIG(s, &der);
    if (derlen != sig_len || memcmp(sig, der, derlen) != 0) {
        SM2err(SM2_F_SM2_VERIFY, SM2_R_INVALID_ENCODING);
        goto done;
    }

    e = BN_bin2bn(dgst, dgstlen, ((void*)0));
    if (e == ((void*)0)) {
        SM2err(SM2_F_SM2_VERIFY, ERR_R_BN_LIB);
        goto done;
    }

    ret = sm2_sig_verify(eckey, s, e);

 done:
    OPENSSL_free(der);
    BN_free(e);
    ECDSA_SIG_free(s);
    return ret;
}
