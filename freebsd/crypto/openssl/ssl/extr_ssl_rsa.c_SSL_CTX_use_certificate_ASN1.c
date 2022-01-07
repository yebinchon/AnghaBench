
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int SSL_CTX ;


 int ERR_R_ASN1_LIB ;
 int SSL_CTX_use_certificate (int *,int *) ;
 int SSL_F_SSL_CTX_USE_CERTIFICATE_ASN1 ;
 int SSLerr (int ,int ) ;
 int X509_free (int *) ;
 int * d2i_X509 (int *,unsigned char const**,long) ;

int SSL_CTX_use_certificate_ASN1(SSL_CTX *ctx, int len, const unsigned char *d)
{
    X509 *x;
    int ret;

    x = d2i_X509(((void*)0), &d, (long)len);
    if (x == ((void*)0)) {
        SSLerr(SSL_F_SSL_CTX_USE_CERTIFICATE_ASN1, ERR_R_ASN1_LIB);
        return 0;
    }

    ret = SSL_CTX_use_certificate(ctx, x);
    X509_free(x);
    return ret;
}
