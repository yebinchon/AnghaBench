
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_ALGOR ;
typedef int EVP_PKEY_CTX ;
typedef int EVP_MD_CTX ;
typedef int ASN1_STRING ;
typedef int ASN1_ITEM ;
typedef int ASN1_BIT_STRING ;


 int * ASN1_STRING_dup (int *) ;
 int ASN1_STRING_free (int *) ;
 int * EVP_MD_CTX_pkey_ctx (int *) ;
 scalar_t__ EVP_PKEY_CTX_get_rsa_padding (int *,int*) ;
 int EVP_PKEY_RSA_PSS ;
 int OBJ_nid2obj (int ) ;
 int RSA_PKCS1_PADDING ;
 int RSA_PKCS1_PSS_PADDING ;
 int V_ASN1_SEQUENCE ;
 int X509_ALGOR_set0 (int *,int ,int ,int *) ;
 int * rsa_ctx_to_pss_string (int *) ;

__attribute__((used)) static int rsa_item_sign(EVP_MD_CTX *ctx, const ASN1_ITEM *it, void *asn,
                         X509_ALGOR *alg1, X509_ALGOR *alg2,
                         ASN1_BIT_STRING *sig)
{
    int pad_mode;
    EVP_PKEY_CTX *pkctx = EVP_MD_CTX_pkey_ctx(ctx);

    if (EVP_PKEY_CTX_get_rsa_padding(pkctx, &pad_mode) <= 0)
        return 0;
    if (pad_mode == RSA_PKCS1_PADDING)
        return 2;
    if (pad_mode == RSA_PKCS1_PSS_PADDING) {
        ASN1_STRING *os1 = ((void*)0);
        os1 = rsa_ctx_to_pss_string(pkctx);
        if (!os1)
            return 0;

        if (alg2) {
            ASN1_STRING *os2 = ASN1_STRING_dup(os1);
            if (!os2) {
                ASN1_STRING_free(os1);
                return 0;
            }
            X509_ALGOR_set0(alg2, OBJ_nid2obj(EVP_PKEY_RSA_PSS),
                            V_ASN1_SEQUENCE, os2);
        }
        X509_ALGOR_set0(alg1, OBJ_nid2obj(EVP_PKEY_RSA_PSS),
                        V_ASN1_SEQUENCE, os1);
        return 3;
    }
    return 2;
}
