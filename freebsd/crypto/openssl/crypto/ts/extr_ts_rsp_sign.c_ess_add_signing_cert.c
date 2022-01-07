
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PKCS7_SIGNER_INFO ;
typedef int ESS_SIGNING_CERT ;
typedef int ASN1_STRING ;


 int ASN1_STRING_free (int *) ;
 int * ASN1_STRING_new () ;
 int ASN1_STRING_set (int *,unsigned char*,int) ;
 int ERR_R_MALLOC_FAILURE ;
 int NID_id_smime_aa_signingCertificate ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (int) ;
 int PKCS7_add_signed_attribute (int *,int ,int ,int *) ;
 int TS_F_ESS_ADD_SIGNING_CERT ;
 int TSerr (int ,int ) ;
 int V_ASN1_SEQUENCE ;
 int i2d_ESS_SIGNING_CERT (int *,unsigned char**) ;

__attribute__((used)) static int ess_add_signing_cert(PKCS7_SIGNER_INFO *si, ESS_SIGNING_CERT *sc)
{
    ASN1_STRING *seq = ((void*)0);
    unsigned char *p, *pp = ((void*)0);
    int len;

    len = i2d_ESS_SIGNING_CERT(sc, ((void*)0));
    if ((pp = OPENSSL_malloc(len)) == ((void*)0)) {
        TSerr(TS_F_ESS_ADD_SIGNING_CERT, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    p = pp;
    i2d_ESS_SIGNING_CERT(sc, &p);
    if ((seq = ASN1_STRING_new()) == ((void*)0) || !ASN1_STRING_set(seq, pp, len)) {
        TSerr(TS_F_ESS_ADD_SIGNING_CERT, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    OPENSSL_free(pp);
    pp = ((void*)0);
    return PKCS7_add_signed_attribute(si,
                                      NID_id_smime_aa_signingCertificate,
                                      V_ASN1_SEQUENCE, seq);
 err:
    ASN1_STRING_free(seq);
    OPENSSL_free(pp);

    return 0;
}
