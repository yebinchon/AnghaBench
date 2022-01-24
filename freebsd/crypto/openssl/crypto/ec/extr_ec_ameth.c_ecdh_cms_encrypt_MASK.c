#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int /*<<< orphan*/ * parameter; int /*<<< orphan*/  const* algorithm; } ;
typedef  TYPE_2__ X509_ALGOR ;
struct TYPE_22__ {int flags; } ;
struct TYPE_19__ {int /*<<< orphan*/ * ec; } ;
struct TYPE_21__ {TYPE_1__ pkey; } ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  TYPE_3__ EVP_PKEY ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;
typedef  int /*<<< orphan*/  EC_KEY ;
typedef  int /*<<< orphan*/  CMS_RecipientInfo ;
typedef  TYPE_4__ ASN1_STRING ;
typedef  int /*<<< orphan*/  ASN1_OCTET_STRING ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;
typedef  TYPE_4__ ASN1_BIT_STRING ;

/* Variables and functions */
 int ASN1_STRING_FLAG_BITS_LEFT ; 
 TYPE_4__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__**,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_2__**,TYPE_4__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (unsigned char**,TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/  const*) ; 
 TYPE_3__* FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *,int) ; 
 int EVP_PKEY_ECDH_KDF_NONE ; 
 int EVP_PKEY_ECDH_KDF_X9_63 ; 
 int /*<<< orphan*/ * FUNC22 () ; 
 int NID_X9_62_id_ecPublicKey ; 
 int NID_dh_cofactor_kdf ; 
 int NID_dh_std_kdf ; 
 scalar_t__ NID_undef ; 
 int /*<<< orphan*/  FUNC23 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  const* FUNC24 (int) ; 
 int /*<<< orphan*/  FUNC25 (unsigned char*) ; 
 unsigned char* FUNC26 (int) ; 
 int /*<<< orphan*/  V_ASN1_SEQUENCE ; 
 int /*<<< orphan*/  V_ASN1_UNDEF ; 
 int /*<<< orphan*/  FUNC27 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/  const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_2__* FUNC29 () ; 
 int /*<<< orphan*/  FUNC30 (TYPE_2__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int FUNC31 (TYPE_2__*,unsigned char**) ; 
 int FUNC32 (int /*<<< orphan*/ *,unsigned char**) ; 

__attribute__((used)) static int FUNC33(CMS_RecipientInfo *ri)
{
    EVP_PKEY_CTX *pctx;
    EVP_PKEY *pkey;
    EVP_CIPHER_CTX *ctx;
    int keylen;
    X509_ALGOR *talg, *wrap_alg = NULL;
    const ASN1_OBJECT *aoid;
    ASN1_BIT_STRING *pubkey;
    ASN1_STRING *wrap_str;
    ASN1_OCTET_STRING *ukm;
    unsigned char *penc = NULL;
    int penclen;
    int rv = 0;
    int ecdh_nid, kdf_type, kdf_nid, wrap_nid;
    const EVP_MD *kdf_md;
    pctx = FUNC5(ri);
    if (!pctx)
        return 0;
    /* Get ephemeral key */
    pkey = FUNC14(pctx);
    if (!FUNC8(ri, &talg, &pubkey,
                                             NULL, NULL, NULL))
        goto err;
    FUNC28(&aoid, NULL, NULL, talg);
    /* Is everything uninitialised? */
    if (aoid == FUNC24(NID_undef)) {

        EC_KEY *eckey = pkey->pkey.ec;
        /* Set the key */
        unsigned char *p;

        penclen = FUNC32(eckey, NULL);
        if (penclen <= 0)
            goto err;
        penc = FUNC26(penclen);
        if (penc == NULL)
            goto err;
        p = penc;
        penclen = FUNC32(eckey, &p);
        if (penclen <= 0)
            goto err;
        FUNC1(pubkey, penc, penclen);
        pubkey->flags &= ~(ASN1_STRING_FLAG_BITS_LEFT | 0x07);
        pubkey->flags |= ASN1_STRING_FLAG_BITS_LEFT;

        penc = NULL;
        FUNC30(talg, FUNC24(NID_X9_62_id_ecPublicKey),
                        V_ASN1_UNDEF, NULL);
    }

    /* See if custom parameters set */
    kdf_type = FUNC17(pctx);
    if (kdf_type <= 0)
        goto err;
    if (!FUNC16(pctx, &kdf_md))
        goto err;
    ecdh_nid = FUNC15(pctx);
    if (ecdh_nid < 0)
        goto err;
    else if (ecdh_nid == 0)
        ecdh_nid = NID_dh_std_kdf;
    else if (ecdh_nid == 1)
        ecdh_nid = NID_dh_cofactor_kdf;

    if (kdf_type == EVP_PKEY_ECDH_KDF_NONE) {
        kdf_type = EVP_PKEY_ECDH_KDF_X9_63;
        if (FUNC21(pctx, kdf_type) <= 0)
            goto err;
    } else
        /* Unknown KDF */
        goto err;
    if (kdf_md == NULL) {
        /* Fixme later for better MD */
        kdf_md = FUNC22();
        if (FUNC19(pctx, kdf_md) <= 0)
            goto err;
    }

    if (!FUNC6(ri, &talg, &ukm))
        goto err;

    /* Lookup NID for KDF+cofactor+digest */

    if (!FUNC23(&kdf_nid, FUNC13(kdf_md), ecdh_nid))
        goto err;
    /* Get wrap NID */
    ctx = FUNC7(ri);
    wrap_nid = FUNC11(ctx);
    keylen = FUNC10(ctx);

    /* Package wrap algorithm in an AlgorithmIdentifier */

    wrap_alg = FUNC29();
    if (wrap_alg == NULL)
        goto err;
    wrap_alg->algorithm = FUNC24(wrap_nid);
    wrap_alg->parameter = FUNC4();
    if (wrap_alg->parameter == NULL)
        goto err;
    if (FUNC12(ctx, wrap_alg->parameter) <= 0)
        goto err;
    if (FUNC3(wrap_alg->parameter) == NID_undef) {
        FUNC2(wrap_alg->parameter);
        wrap_alg->parameter = NULL;
    }

    if (FUNC20(pctx, keylen) <= 0)
        goto err;

    penclen = FUNC9(&penc, wrap_alg, ukm, keylen);

    if (!penclen)
        goto err;

    if (FUNC18(pctx, penc, penclen) <= 0)
        goto err;
    penc = NULL;

    /*
     * Now need to wrap encoding of wrap AlgorithmIdentifier into parameter
     * of another AlgorithmIdentifier.
     */
    penclen = FUNC31(wrap_alg, &penc);
    if (!penc || !penclen)
        goto err;
    wrap_str = FUNC0();
    if (wrap_str == NULL)
        goto err;
    FUNC1(wrap_str, penc, penclen);
    penc = NULL;
    FUNC30(talg, FUNC24(kdf_nid), V_ASN1_SEQUENCE, wrap_str);

    rv = 1;

 err:
    FUNC25(penc);
    FUNC27(wrap_alg);
    return rv;
}