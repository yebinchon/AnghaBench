
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_ALGOR ;
typedef int EVP_MD_CTX ;
typedef int ASN1_ITEM ;
typedef int ASN1_BIT_STRING ;


 int NID_ED25519 ;
 int OBJ_nid2obj (int ) ;
 int V_ASN1_UNDEF ;
 int X509_ALGOR_set0 (int *,int ,int ,int *) ;

__attribute__((used)) static int ecd_item_sign25519(EVP_MD_CTX *ctx, const ASN1_ITEM *it, void *asn,
                              X509_ALGOR *alg1, X509_ALGOR *alg2,
                              ASN1_BIT_STRING *str)
{

    X509_ALGOR_set0(alg1, OBJ_nid2obj(NID_ED25519), V_ASN1_UNDEF, ((void*)0));
    if (alg2)
        X509_ALGOR_set0(alg2, OBJ_nid2obj(NID_ED25519), V_ASN1_UNDEF, ((void*)0));

    return 3;
}
