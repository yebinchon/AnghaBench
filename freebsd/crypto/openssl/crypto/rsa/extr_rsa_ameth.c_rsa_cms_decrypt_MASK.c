#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_3__* parameter; int /*<<< orphan*/  algorithm; } ;
typedef  TYPE_4__ X509_ALGOR ;
struct TYPE_14__ {TYPE_4__* pSourceFunc; int /*<<< orphan*/  hashFunc; int /*<<< orphan*/  maskHash; } ;
struct TYPE_11__ {TYPE_1__* octet_string; } ;
struct TYPE_12__ {scalar_t__ type; TYPE_2__ value; } ;
struct TYPE_10__ {unsigned char* data; int length; } ;
typedef  TYPE_5__ RSA_OAEP_PARAMS ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  CMS_RecipientInfo ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_4__**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ NID_pSpecified ; 
 int NID_rsaEncryption ; 
 int NID_rsaesOaep ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RSA_F_RSA_CMS_DECRYPT ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  RSA_PKCS1_OAEP_PADDING ; 
 int /*<<< orphan*/  RSA_R_INVALID_LABEL ; 
 int /*<<< orphan*/  RSA_R_INVALID_OAEP_PARAMETERS ; 
 int /*<<< orphan*/  RSA_R_UNSUPPORTED_ENCRYPTION_TYPE ; 
 int /*<<< orphan*/  RSA_R_UNSUPPORTED_LABEL_SOURCE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ V_ASN1_OCTET_STRING ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC10 (TYPE_4__*) ; 

__attribute__((used)) static int FUNC11(CMS_RecipientInfo *ri)
{
    EVP_PKEY_CTX *pkctx;
    X509_ALGOR *cmsalg;
    int nid;
    int rv = -1;
    unsigned char *label = NULL;
    int labellen = 0;
    const EVP_MD *mgf1md = NULL, *md = NULL;
    RSA_OAEP_PARAMS *oaep;

    pkctx = FUNC0(ri);
    if (pkctx == NULL)
        return 0;
    if (!FUNC1(ri, NULL, NULL, &cmsalg))
        return -1;
    nid = FUNC6(cmsalg->algorithm);
    if (nid == NID_rsaEncryption)
        return 1;
    if (nid != NID_rsaesOaep) {
        FUNC8(RSA_F_RSA_CMS_DECRYPT, RSA_R_UNSUPPORTED_ENCRYPTION_TYPE);
        return -1;
    }
    /* Decode OAEP parameters */
    oaep = FUNC10(cmsalg);

    if (oaep == NULL) {
        FUNC8(RSA_F_RSA_CMS_DECRYPT, RSA_R_INVALID_OAEP_PARAMETERS);
        goto err;
    }

    mgf1md = FUNC9(oaep->maskHash);
    if (mgf1md == NULL)
        goto err;
    md = FUNC9(oaep->hashFunc);
    if (md == NULL)
        goto err;

    if (oaep->pSourceFunc != NULL) {
        X509_ALGOR *plab = oaep->pSourceFunc;

        if (FUNC6(plab->algorithm) != NID_pSpecified) {
            FUNC8(RSA_F_RSA_CMS_DECRYPT, RSA_R_UNSUPPORTED_LABEL_SOURCE);
            goto err;
        }
        if (plab->parameter->type != V_ASN1_OCTET_STRING) {
            FUNC8(RSA_F_RSA_CMS_DECRYPT, RSA_R_INVALID_LABEL);
            goto err;
        }

        label = plab->parameter->value.octet_string->data;
        /* Stop label being freed when OAEP parameters are freed */
        plab->parameter->value.octet_string->data = NULL;
        labellen = plab->parameter->value.octet_string->length;
    }

    if (FUNC5(pkctx, RSA_PKCS1_OAEP_PADDING) <= 0)
        goto err;
    if (FUNC4(pkctx, md) <= 0)
        goto err;
    if (FUNC3(pkctx, mgf1md) <= 0)
        goto err;
    if (FUNC2(pkctx, label, labellen) <= 0)
        goto err;
    /* Carry on */
    rv = 1;

 err:
    FUNC7(oaep);
    return rv;
}