
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_21__ {int * parameter; int const* algorithm; } ;
typedef TYPE_3__ X509_ALGOR ;
struct TYPE_23__ {int flags; } ;
struct TYPE_20__ {TYPE_1__* dh; } ;
struct TYPE_22__ {TYPE_2__ pkey; } ;
struct TYPE_19__ {int pub_key; } ;
typedef int EVP_PKEY_CTX ;
typedef TYPE_4__ EVP_PKEY ;
typedef int EVP_MD ;
typedef int EVP_CIPHER_CTX ;
typedef int CMS_RecipientInfo ;
typedef TYPE_5__ ASN1_STRING ;
typedef int ASN1_OCTET_STRING ;
typedef int ASN1_OBJECT ;
typedef int ASN1_INTEGER ;
typedef TYPE_5__ ASN1_BIT_STRING ;


 int ASN1_INTEGER_free (int *) ;
 int ASN1_STRING_FLAG_BITS_LEFT ;
 int ASN1_STRING_get0_data (int *) ;
 size_t ASN1_STRING_length (int *) ;
 TYPE_5__* ASN1_STRING_new () ;
 int ASN1_STRING_set0 (TYPE_5__*,unsigned char*,int) ;
 int ASN1_TYPE_free (int *) ;
 scalar_t__ ASN1_TYPE_get (int *) ;
 int * ASN1_TYPE_new () ;
 int * BN_to_ASN1_INTEGER (int ,int *) ;
 int * CMS_RecipientInfo_get0_pkey_ctx (int *) ;
 int CMS_RecipientInfo_kari_get0_alg (int *,TYPE_3__**,int **) ;
 int * CMS_RecipientInfo_kari_get0_ctx (int *) ;
 int CMS_RecipientInfo_kari_get0_orig_id (int *,TYPE_3__**,TYPE_5__**,int *,int *,int *) ;
 int EVP_CIPHER_CTX_key_length (int *) ;
 int EVP_CIPHER_CTX_type (int *) ;
 scalar_t__ EVP_CIPHER_param_to_asn1 (int *,int *) ;
 scalar_t__ EVP_MD_type (int const*) ;
 TYPE_4__* EVP_PKEY_CTX_get0_pkey (int *) ;
 int EVP_PKEY_CTX_get_dh_kdf_md (int *,int const**) ;
 int EVP_PKEY_CTX_get_dh_kdf_type (int *) ;
 scalar_t__ EVP_PKEY_CTX_set0_dh_kdf_oid (int *,int const*) ;
 scalar_t__ EVP_PKEY_CTX_set0_dh_kdf_ukm (int *,unsigned char*,size_t) ;
 scalar_t__ EVP_PKEY_CTX_set_dh_kdf_md (int *,int const*) ;
 scalar_t__ EVP_PKEY_CTX_set_dh_kdf_outlen (int *,int) ;
 scalar_t__ EVP_PKEY_CTX_set_dh_kdf_type (int *,int) ;
 int EVP_PKEY_DH_KDF_NONE ;
 int EVP_PKEY_DH_KDF_X9_42 ;
 int * EVP_sha1 () ;
 int NID_dhpublicnumber ;
 int NID_id_smime_alg_ESDH ;
 scalar_t__ NID_sha1 ;
 scalar_t__ NID_undef ;
 int const* OBJ_nid2obj (int) ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_memdup (int ,size_t) ;
 int V_ASN1_SEQUENCE ;
 int V_ASN1_UNDEF ;
 int X509_ALGOR_free (TYPE_3__*) ;
 int X509_ALGOR_get0 (int const**,int *,int *,TYPE_3__*) ;
 TYPE_3__* X509_ALGOR_new () ;
 int X509_ALGOR_set0 (TYPE_3__*,int const*,int ,TYPE_5__*) ;
 int i2d_ASN1_INTEGER (int *,unsigned char**) ;
 int i2d_X509_ALGOR (TYPE_3__*,unsigned char**) ;

__attribute__((used)) static int dh_cms_encrypt(CMS_RecipientInfo *ri)
{
    EVP_PKEY_CTX *pctx;
    EVP_PKEY *pkey;
    EVP_CIPHER_CTX *ctx;
    int keylen;
    X509_ALGOR *talg, *wrap_alg = ((void*)0);
    const ASN1_OBJECT *aoid;
    ASN1_BIT_STRING *pubkey;
    ASN1_STRING *wrap_str;
    ASN1_OCTET_STRING *ukm;
    unsigned char *penc = ((void*)0), *dukm = ((void*)0);
    int penclen;
    size_t dukmlen = 0;
    int rv = 0;
    int kdf_type, wrap_nid;
    const EVP_MD *kdf_md;
    pctx = CMS_RecipientInfo_get0_pkey_ctx(ri);
    if (!pctx)
        return 0;

    pkey = EVP_PKEY_CTX_get0_pkey(pctx);
    if (!CMS_RecipientInfo_kari_get0_orig_id(ri, &talg, &pubkey,
                                             ((void*)0), ((void*)0), ((void*)0)))
        goto err;
    X509_ALGOR_get0(&aoid, ((void*)0), ((void*)0), talg);

    if (aoid == OBJ_nid2obj(NID_undef)) {
        ASN1_INTEGER *pubk = BN_to_ASN1_INTEGER(pkey->pkey.dh->pub_key, ((void*)0));
        if (!pubk)
            goto err;


        penclen = i2d_ASN1_INTEGER(pubk, &penc);
        ASN1_INTEGER_free(pubk);
        if (penclen <= 0)
            goto err;
        ASN1_STRING_set0(pubkey, penc, penclen);
        pubkey->flags &= ~(ASN1_STRING_FLAG_BITS_LEFT | 0x07);
        pubkey->flags |= ASN1_STRING_FLAG_BITS_LEFT;

        penc = ((void*)0);
        X509_ALGOR_set0(talg, OBJ_nid2obj(NID_dhpublicnumber),
                        V_ASN1_UNDEF, ((void*)0));
    }


    kdf_type = EVP_PKEY_CTX_get_dh_kdf_type(pctx);
    if (kdf_type <= 0)
        goto err;
    if (!EVP_PKEY_CTX_get_dh_kdf_md(pctx, &kdf_md))
        goto err;

    if (kdf_type == EVP_PKEY_DH_KDF_NONE) {
        kdf_type = EVP_PKEY_DH_KDF_X9_42;
        if (EVP_PKEY_CTX_set_dh_kdf_type(pctx, kdf_type) <= 0)
            goto err;
    } else if (kdf_type != EVP_PKEY_DH_KDF_X9_42)

        goto err;
    if (kdf_md == ((void*)0)) {

        kdf_md = EVP_sha1();
        if (EVP_PKEY_CTX_set_dh_kdf_md(pctx, kdf_md) <= 0)
            goto err;
    } else if (EVP_MD_type(kdf_md) != NID_sha1)

        goto err;

    if (!CMS_RecipientInfo_kari_get0_alg(ri, &talg, &ukm))
        goto err;


    ctx = CMS_RecipientInfo_kari_get0_ctx(ri);
    wrap_nid = EVP_CIPHER_CTX_type(ctx);
    if (EVP_PKEY_CTX_set0_dh_kdf_oid(pctx, OBJ_nid2obj(wrap_nid)) <= 0)
        goto err;
    keylen = EVP_CIPHER_CTX_key_length(ctx);



    wrap_alg = X509_ALGOR_new();
    if (wrap_alg == ((void*)0))
        goto err;
    wrap_alg->algorithm = OBJ_nid2obj(wrap_nid);
    wrap_alg->parameter = ASN1_TYPE_new();
    if (wrap_alg->parameter == ((void*)0))
        goto err;
    if (EVP_CIPHER_param_to_asn1(ctx, wrap_alg->parameter) <= 0)
        goto err;
    if (ASN1_TYPE_get(wrap_alg->parameter) == NID_undef) {
        ASN1_TYPE_free(wrap_alg->parameter);
        wrap_alg->parameter = ((void*)0);
    }

    if (EVP_PKEY_CTX_set_dh_kdf_outlen(pctx, keylen) <= 0)
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





    penc = ((void*)0);
    penclen = i2d_X509_ALGOR(wrap_alg, &penc);
    if (!penc || !penclen)
        goto err;
    wrap_str = ASN1_STRING_new();
    if (wrap_str == ((void*)0))
        goto err;
    ASN1_STRING_set0(wrap_str, penc, penclen);
    penc = ((void*)0);
    X509_ALGOR_set0(talg, OBJ_nid2obj(NID_id_smime_alg_ESDH),
                    V_ASN1_SEQUENCE, wrap_str);

    rv = 1;

 err:
    OPENSSL_free(penc);
    X509_ALGOR_free(wrap_alg);
    return rv;
}
