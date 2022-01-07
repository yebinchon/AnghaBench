
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_NAME ;
typedef int X509 ;
typedef int BIO ;
typedef int ASN1_BIT_STRING ;


 unsigned char* ASN1_STRING_get0_data (int *) ;
 int ASN1_STRING_length (int *) ;
 scalar_t__ BIO_printf (int *,char*,...) ;
 int EVP_Digest (unsigned char*,int,unsigned char*,int *,int ,int *) ;
 int EVP_sha1 () ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (int) ;
 int SHA_DIGEST_LENGTH ;
 int * X509_get0_pubkey_bitstr (int *) ;
 int * X509_get_subject_name (int *) ;
 int i2d_X509_NAME (int *,unsigned char**) ;

int X509_ocspid_print(BIO *bp, X509 *x)
{
    unsigned char *der = ((void*)0);
    unsigned char *dertmp;
    int derlen;
    int i;
    unsigned char SHA1md[SHA_DIGEST_LENGTH];
    ASN1_BIT_STRING *keybstr;
    X509_NAME *subj;




    if (BIO_printf(bp, "        Subject OCSP hash: ") <= 0)
        goto err;
    subj = X509_get_subject_name(x);
    derlen = i2d_X509_NAME(subj, ((void*)0));
    if ((der = dertmp = OPENSSL_malloc(derlen)) == ((void*)0))
        goto err;
    i2d_X509_NAME(subj, &dertmp);

    if (!EVP_Digest(der, derlen, SHA1md, ((void*)0), EVP_sha1(), ((void*)0)))
        goto err;
    for (i = 0; i < SHA_DIGEST_LENGTH; i++) {
        if (BIO_printf(bp, "%02X", SHA1md[i]) <= 0)
            goto err;
    }
    OPENSSL_free(der);
    der = ((void*)0);




    if (BIO_printf(bp, "\n        Public key OCSP hash: ") <= 0)
        goto err;

    keybstr = X509_get0_pubkey_bitstr(x);

    if (keybstr == ((void*)0))
        goto err;

    if (!EVP_Digest(ASN1_STRING_get0_data(keybstr),
                    ASN1_STRING_length(keybstr), SHA1md, ((void*)0), EVP_sha1(),
                    ((void*)0)))
        goto err;
    for (i = 0; i < SHA_DIGEST_LENGTH; i++) {
        if (BIO_printf(bp, "%02X", SHA1md[i]) <= 0)
            goto err;
    }
    BIO_printf(bp, "\n");

    return 1;
 err:
    OPENSSL_free(der);
    return 0;
}
