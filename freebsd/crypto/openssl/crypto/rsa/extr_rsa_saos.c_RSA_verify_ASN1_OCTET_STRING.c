
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; scalar_t__ length; } ;
typedef int RSA ;
typedef TYPE_1__ ASN1_OCTET_STRING ;


 int ASN1_OCTET_STRING_free (TYPE_1__*) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_clear_free (unsigned char*,unsigned int) ;
 unsigned char* OPENSSL_malloc (unsigned int) ;
 int RSA_F_RSA_VERIFY_ASN1_OCTET_STRING ;
 int RSA_PKCS1_PADDING ;
 int RSA_R_BAD_SIGNATURE ;
 int RSA_R_WRONG_SIGNATURE_LENGTH ;
 int RSA_public_decrypt (int,unsigned char*,unsigned char*,int *,int ) ;
 scalar_t__ RSA_size (int *) ;
 int RSAerr (int ,int ) ;
 TYPE_1__* d2i_ASN1_OCTET_STRING (int *,unsigned char const**,long) ;
 scalar_t__ memcmp (unsigned char const*,int ,unsigned int) ;

int RSA_verify_ASN1_OCTET_STRING(int dtype,
                                 const unsigned char *m,
                                 unsigned int m_len, unsigned char *sigbuf,
                                 unsigned int siglen, RSA *rsa)
{
    int i, ret = 0;
    unsigned char *s;
    const unsigned char *p;
    ASN1_OCTET_STRING *sig = ((void*)0);

    if (siglen != (unsigned int)RSA_size(rsa)) {
        RSAerr(RSA_F_RSA_VERIFY_ASN1_OCTET_STRING,
               RSA_R_WRONG_SIGNATURE_LENGTH);
        return 0;
    }

    s = OPENSSL_malloc((unsigned int)siglen);
    if (s == ((void*)0)) {
        RSAerr(RSA_F_RSA_VERIFY_ASN1_OCTET_STRING, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    i = RSA_public_decrypt((int)siglen, sigbuf, s, rsa, RSA_PKCS1_PADDING);

    if (i <= 0)
        goto err;

    p = s;
    sig = d2i_ASN1_OCTET_STRING(((void*)0), &p, (long)i);
    if (sig == ((void*)0))
        goto err;

    if (((unsigned int)sig->length != m_len) ||
        (memcmp(m, sig->data, m_len) != 0)) {
        RSAerr(RSA_F_RSA_VERIFY_ASN1_OCTET_STRING, RSA_R_BAD_SIGNATURE);
    } else {
        ret = 1;
    }
 err:
    ASN1_OCTET_STRING_free(sig);
    OPENSSL_clear_free(s, (unsigned int)siglen);
    return ret;
}
