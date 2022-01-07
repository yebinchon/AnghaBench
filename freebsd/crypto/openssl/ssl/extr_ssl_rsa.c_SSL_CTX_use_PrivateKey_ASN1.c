
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;
typedef int EVP_PKEY ;


 int ERR_R_ASN1_LIB ;
 int EVP_PKEY_free (int *) ;
 int SSL_CTX_use_PrivateKey (int *,int *) ;
 int SSL_F_SSL_CTX_USE_PRIVATEKEY_ASN1 ;
 int SSLerr (int ,int ) ;
 int * d2i_PrivateKey (int,int *,unsigned char const**,long) ;

int SSL_CTX_use_PrivateKey_ASN1(int type, SSL_CTX *ctx,
                                const unsigned char *d, long len)
{
    int ret;
    const unsigned char *p;
    EVP_PKEY *pkey;

    p = d;
    if ((pkey = d2i_PrivateKey(type, ((void*)0), &p, (long)len)) == ((void*)0)) {
        SSLerr(SSL_F_SSL_CTX_USE_PRIVATEKEY_ASN1, ERR_R_ASN1_LIB);
        return 0;
    }

    ret = SSL_CTX_use_PrivateKey(ctx, pkey);
    EVP_PKEY_free(pkey);
    return ret;
}
