
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;
typedef int RSA ;


 int ERR_R_ASN1_LIB ;
 int RSA_free (int *) ;
 int SSL_F_SSL_USE_RSAPRIVATEKEY_ASN1 ;
 int SSL_use_RSAPrivateKey (int *,int *) ;
 int SSLerr (int ,int ) ;
 int * d2i_RSAPrivateKey (int *,unsigned char const**,long) ;

int SSL_use_RSAPrivateKey_ASN1(SSL *ssl, const unsigned char *d, long len)
{
    int ret;
    const unsigned char *p;
    RSA *rsa;

    p = d;
    if ((rsa = d2i_RSAPrivateKey(((void*)0), &p, (long)len)) == ((void*)0)) {
        SSLerr(SSL_F_SSL_USE_RSAPRIVATEKEY_ASN1, ERR_R_ASN1_LIB);
        return 0;
    }

    ret = SSL_use_RSAPrivateKey(ssl, rsa);
    RSA_free(rsa);
    return ret;
}
