
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_6__* parameter; int algorithm; } ;
typedef TYPE_3__ X509_ALGOR ;
struct TYPE_9__ {TYPE_1__* sequence; } ;
struct TYPE_11__ {scalar_t__ type; TYPE_2__ value; } ;
struct TYPE_8__ {unsigned char* data; int length; } ;
typedef int EVP_PKEY_CTX ;
typedef int EVP_CIPHER_CTX ;
typedef int EVP_CIPHER ;
typedef int CMS_RecipientInfo ;
typedef int ASN1_OCTET_STRING ;


 int ASN1_STRING_get0_data (int *) ;
 size_t ASN1_STRING_length (int *) ;
 int CMS_RecipientInfo_kari_get0_alg (int *,TYPE_3__**,int **) ;
 int * CMS_RecipientInfo_kari_get0_ctx (int *) ;
 int DH_F_DH_CMS_SET_SHARED_INFO ;
 int DH_R_KDF_PARAMETER_ERROR ;
 int DHerr (int ,int ) ;
 int EVP_CIPHER_CTX_key_length (int *) ;
 scalar_t__ EVP_CIPHER_asn1_to_param (int *,TYPE_6__*) ;
 scalar_t__ EVP_CIPHER_mode (int const*) ;
 int EVP_CIPHER_type (int const*) ;
 scalar_t__ EVP_CIPH_WRAP_MODE ;
 int EVP_EncryptInit_ex (int *,int const*,int *,int *,int *) ;
 scalar_t__ EVP_PKEY_CTX_set0_dh_kdf_oid (int *,int ) ;
 scalar_t__ EVP_PKEY_CTX_set0_dh_kdf_ukm (int *,unsigned char*,size_t) ;
 scalar_t__ EVP_PKEY_CTX_set_dh_kdf_md (int *,int ) ;
 scalar_t__ EVP_PKEY_CTX_set_dh_kdf_outlen (int *,int) ;
 scalar_t__ EVP_PKEY_CTX_set_dh_kdf_type (int *,int ) ;
 int EVP_PKEY_DH_KDF_X9_42 ;
 int * EVP_get_cipherbyobj (int ) ;
 int EVP_sha1 () ;
 scalar_t__ NID_id_smime_alg_ESDH ;
 int OBJ_nid2obj (int ) ;
 scalar_t__ OBJ_obj2nid (int ) ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_memdup (int ,size_t) ;
 scalar_t__ V_ASN1_SEQUENCE ;
 int X509_ALGOR_free (TYPE_3__*) ;
 TYPE_3__* d2i_X509_ALGOR (int *,unsigned char const**,int) ;

__attribute__((used)) static int dh_cms_set_shared_info(EVP_PKEY_CTX *pctx, CMS_RecipientInfo *ri)
{
    int rv = 0;

    X509_ALGOR *alg, *kekalg = ((void*)0);
    ASN1_OCTET_STRING *ukm;
    const unsigned char *p;
    unsigned char *dukm = ((void*)0);
    size_t dukmlen = 0;
    int keylen, plen;
    const EVP_CIPHER *kekcipher;
    EVP_CIPHER_CTX *kekctx;

    if (!CMS_RecipientInfo_kari_get0_alg(ri, &alg, &ukm))
        goto err;





    if (OBJ_obj2nid(alg->algorithm) != NID_id_smime_alg_ESDH) {
        DHerr(DH_F_DH_CMS_SET_SHARED_INFO, DH_R_KDF_PARAMETER_ERROR);
        goto err;
    }

    if (EVP_PKEY_CTX_set_dh_kdf_type(pctx, EVP_PKEY_DH_KDF_X9_42) <= 0)
        goto err;

    if (EVP_PKEY_CTX_set_dh_kdf_md(pctx, EVP_sha1()) <= 0)
        goto err;

    if (alg->parameter->type != V_ASN1_SEQUENCE)
        goto err;

    p = alg->parameter->value.sequence->data;
    plen = alg->parameter->value.sequence->length;
    kekalg = d2i_X509_ALGOR(((void*)0), &p, plen);
    if (!kekalg)
        goto err;
    kekctx = CMS_RecipientInfo_kari_get0_ctx(ri);
    if (!kekctx)
        goto err;
    kekcipher = EVP_get_cipherbyobj(kekalg->algorithm);
    if (!kekcipher || EVP_CIPHER_mode(kekcipher) != EVP_CIPH_WRAP_MODE)
        goto err;
    if (!EVP_EncryptInit_ex(kekctx, kekcipher, ((void*)0), ((void*)0), ((void*)0)))
        goto err;
    if (EVP_CIPHER_asn1_to_param(kekctx, kekalg->parameter) <= 0)
        goto err;

    keylen = EVP_CIPHER_CTX_key_length(kekctx);
    if (EVP_PKEY_CTX_set_dh_kdf_outlen(pctx, keylen) <= 0)
        goto err;

    if (EVP_PKEY_CTX_set0_dh_kdf_oid(pctx,
                                     OBJ_nid2obj(EVP_CIPHER_type(kekcipher)))
        <= 0)
        goto err;

    if (ukm) {
        dukmlen = ASN1_STRING_length(ukm);
        dukm = OPENSSL_memdup(ASN1_STRING_get0_data(ukm), dukmlen);
        if (!dukm)
            goto err;
    }

    if (EVP_PKEY_CTX_set0_dh_kdf_ukm(pctx, dukm, dukmlen) <= 0)
        goto err;
    dukm = ((void*)0);

    rv = 1;
 err:
    X509_ALGOR_free(kekalg);
    OPENSSL_free(dukm);
    return rv;
}
