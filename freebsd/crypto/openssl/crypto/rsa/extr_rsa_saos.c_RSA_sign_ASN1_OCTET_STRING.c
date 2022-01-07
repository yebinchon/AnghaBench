
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int length; unsigned char* data; int type; } ;
typedef int RSA ;
typedef TYPE_1__ ASN1_OCTET_STRING ;


 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_clear_free (unsigned char*,unsigned int) ;
 unsigned char* OPENSSL_malloc (unsigned int) ;
 int RSA_F_RSA_SIGN_ASN1_OCTET_STRING ;
 int RSA_PKCS1_PADDING ;
 int RSA_PKCS1_PADDING_SIZE ;
 int RSA_R_DIGEST_TOO_BIG_FOR_RSA_KEY ;
 int RSA_private_encrypt (int,unsigned char*,unsigned char*,int *,int ) ;
 int RSA_size (int *) ;
 int RSAerr (int ,int ) ;
 int V_ASN1_OCTET_STRING ;
 int i2d_ASN1_OCTET_STRING (TYPE_1__*,unsigned char**) ;

int RSA_sign_ASN1_OCTET_STRING(int type,
                               const unsigned char *m, unsigned int m_len,
                               unsigned char *sigret, unsigned int *siglen,
                               RSA *rsa)
{
    ASN1_OCTET_STRING sig;
    int i, j, ret = 1;
    unsigned char *p, *s;

    sig.type = V_ASN1_OCTET_STRING;
    sig.length = m_len;
    sig.data = (unsigned char *)m;

    i = i2d_ASN1_OCTET_STRING(&sig, ((void*)0));
    j = RSA_size(rsa);
    if (i > (j - RSA_PKCS1_PADDING_SIZE)) {
        RSAerr(RSA_F_RSA_SIGN_ASN1_OCTET_STRING,
               RSA_R_DIGEST_TOO_BIG_FOR_RSA_KEY);
        return 0;
    }
    s = OPENSSL_malloc((unsigned int)j + 1);
    if (s == ((void*)0)) {
        RSAerr(RSA_F_RSA_SIGN_ASN1_OCTET_STRING, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    p = s;
    i2d_ASN1_OCTET_STRING(&sig, &p);
    i = RSA_private_encrypt(i, s, sigret, rsa, RSA_PKCS1_PADDING);
    if (i <= 0)
        ret = 0;
    else
        *siglen = i;

    OPENSSL_clear_free(s, (unsigned int)j + 1);
    return ret;
}
