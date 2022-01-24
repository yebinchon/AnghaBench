#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_2__* envelopedData; } ;
struct TYPE_18__ {TYPE_3__ d; } ;
struct TYPE_17__ {int /*<<< orphan*/  keylen; int /*<<< orphan*/  key; } ;
struct TYPE_16__ {int /*<<< orphan*/ * pctx; int /*<<< orphan*/  encryptedKey; int /*<<< orphan*/  pkey; } ;
struct TYPE_12__ {TYPE_5__* ktri; } ;
struct TYPE_15__ {scalar_t__ type; TYPE_1__ d; } ;
struct TYPE_13__ {TYPE_6__* encryptedContentInfo; } ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  TYPE_4__ CMS_RecipientInfo ;
typedef  TYPE_5__ CMS_KeyTransRecipientInfo ;
typedef  TYPE_6__ CMS_EncryptedContentInfo ;
typedef  TYPE_7__ CMS_ContentInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char*,size_t) ; 
 int /*<<< orphan*/  CMS_F_CMS_RECIPIENTINFO_KTRI_ENCRYPT ; 
 scalar_t__ CMS_RECIPINFO_TRANS ; 
 int /*<<< orphan*/  CMS_R_CTRL_ERROR ; 
 int /*<<< orphan*/  CMS_R_NOT_KEY_TRANSPORT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  EVP_PKEY_CTRL_CMS_ENCRYPT ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EVP_PKEY_OP_ENCRYPT ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,unsigned char*,size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*) ; 
 unsigned char* FUNC8 (size_t) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(CMS_ContentInfo *cms,
                                          CMS_RecipientInfo *ri)
{
    CMS_KeyTransRecipientInfo *ktri;
    CMS_EncryptedContentInfo *ec;
    EVP_PKEY_CTX *pctx;
    unsigned char *ek = NULL;
    size_t eklen;

    int ret = 0;

    if (ri->type != CMS_RECIPINFO_TRANS) {
        FUNC1(CMS_F_CMS_RECIPIENTINFO_KTRI_ENCRYPT, CMS_R_NOT_KEY_TRANSPORT);
        return 0;
    }
    ktri = ri->d.ktri;
    ec = cms->d.envelopedData->encryptedContentInfo;

    pctx = ktri->pctx;

    if (pctx) {
        if (!FUNC9(ri, 0))
            goto err;
    } else {
        pctx = FUNC4(ktri->pkey, NULL);
        if (pctx == NULL)
            return 0;

        if (FUNC6(pctx) <= 0)
            goto err;
    }

    if (FUNC2(pctx, -1, EVP_PKEY_OP_ENCRYPT,
                          EVP_PKEY_CTRL_CMS_ENCRYPT, 0, ri) <= 0) {
        FUNC1(CMS_F_CMS_RECIPIENTINFO_KTRI_ENCRYPT, CMS_R_CTRL_ERROR);
        goto err;
    }

    if (FUNC5(pctx, NULL, &eklen, ec->key, ec->keylen) <= 0)
        goto err;

    ek = FUNC8(eklen);

    if (ek == NULL) {
        FUNC1(CMS_F_CMS_RECIPIENTINFO_KTRI_ENCRYPT, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    if (FUNC5(pctx, ek, &eklen, ec->key, ec->keylen) <= 0)
        goto err;

    FUNC0(ktri->encryptedKey, ek, eklen);
    ek = NULL;

    ret = 1;

 err:
    FUNC3(pctx);
    ktri->pctx = NULL;
    FUNC7(ek);
    return ret;

}