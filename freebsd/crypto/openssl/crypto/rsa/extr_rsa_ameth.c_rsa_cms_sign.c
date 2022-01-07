
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_ALGOR ;
typedef int EVP_PKEY_CTX ;
typedef int CMS_SignerInfo ;
typedef int ASN1_STRING ;


 int CMS_SignerInfo_get0_algs (int *,int *,int *,int *,int **) ;
 int * CMS_SignerInfo_get0_pkey_ctx (int *) ;
 scalar_t__ EVP_PKEY_CTX_get_rsa_padding (int *,int*) ;
 int EVP_PKEY_RSA_PSS ;
 int NID_rsaEncryption ;
 int OBJ_nid2obj (int ) ;
 int RSA_PKCS1_PADDING ;
 int RSA_PKCS1_PSS_PADDING ;
 int V_ASN1_NULL ;
 int V_ASN1_SEQUENCE ;
 int X509_ALGOR_set0 (int *,int ,int ,int *) ;
 int * rsa_ctx_to_pss_string (int *) ;

__attribute__((used)) static int rsa_cms_sign(CMS_SignerInfo *si)
{
    int pad_mode = RSA_PKCS1_PADDING;
    X509_ALGOR *alg;
    EVP_PKEY_CTX *pkctx = CMS_SignerInfo_get0_pkey_ctx(si);
    ASN1_STRING *os = ((void*)0);

    CMS_SignerInfo_get0_algs(si, ((void*)0), ((void*)0), ((void*)0), &alg);
    if (pkctx) {
        if (EVP_PKEY_CTX_get_rsa_padding(pkctx, &pad_mode) <= 0)
            return 0;
    }
    if (pad_mode == RSA_PKCS1_PADDING) {
        X509_ALGOR_set0(alg, OBJ_nid2obj(NID_rsaEncryption), V_ASN1_NULL, 0);
        return 1;
    }

    if (pad_mode != RSA_PKCS1_PSS_PADDING)
        return 0;
    os = rsa_ctx_to_pss_string(pkctx);
    if (!os)
        return 0;
    X509_ALGOR_set0(alg, OBJ_nid2obj(EVP_PKEY_RSA_PSS), V_ASN1_SEQUENCE, os);
    return 1;
}
