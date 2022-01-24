#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  actx ;
struct TYPE_13__ {TYPE_1__* envelopedData; } ;
struct TYPE_20__ {TYPE_2__ d; } ;
struct TYPE_19__ {unsigned char* key; int keylen; } ;
struct TYPE_18__ {int keylen; TYPE_5__* encryptedKey; int /*<<< orphan*/  key; TYPE_4__* keyEncryptionAlgorithm; } ;
struct TYPE_14__ {TYPE_7__* kekri; } ;
struct TYPE_17__ {TYPE_3__ d; } ;
struct TYPE_16__ {int length; int /*<<< orphan*/  data; } ;
struct TYPE_15__ {int /*<<< orphan*/  algorithm; } ;
struct TYPE_12__ {TYPE_8__* encryptedContentInfo; } ;
typedef  TYPE_6__ CMS_RecipientInfo ;
typedef  TYPE_7__ CMS_KEKRecipientInfo ;
typedef  TYPE_8__ CMS_EncryptedContentInfo ;
typedef  TYPE_9__ CMS_ContentInfo ;
typedef  int /*<<< orphan*/  AES_KEY ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  CMS_F_CMS_RECIPIENTINFO_KEKRI_DECRYPT ; 
 int /*<<< orphan*/  CMS_R_ERROR_SETTING_KEY ; 
 int /*<<< orphan*/  CMS_R_INVALID_ENCRYPTED_KEY_LENGTH ; 
 int /*<<< orphan*/  CMS_R_INVALID_KEY_LENGTH ; 
 int /*<<< orphan*/  CMS_R_NO_KEY ; 
 int /*<<< orphan*/  CMS_R_UNWRAP_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*) ; 
 unsigned char* FUNC6 (int) ; 
 int FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(CMS_ContentInfo *cms,
                                           CMS_RecipientInfo *ri)
{
    CMS_EncryptedContentInfo *ec;
    CMS_KEKRecipientInfo *kekri;
    AES_KEY actx;
    unsigned char *ukey = NULL;
    int ukeylen;
    int r = 0, wrap_nid;

    ec = cms->d.envelopedData->encryptedContentInfo;

    kekri = ri->d.kekri;

    if (!kekri->key) {
        FUNC2(CMS_F_CMS_RECIPIENTINFO_KEKRI_DECRYPT, CMS_R_NO_KEY);
        return 0;
    }

    wrap_nid = FUNC3(kekri->keyEncryptionAlgorithm->algorithm);
    if (FUNC7(wrap_nid) != kekri->keylen) {
        FUNC2(CMS_F_CMS_RECIPIENTINFO_KEKRI_DECRYPT,
               CMS_R_INVALID_KEY_LENGTH);
        return 0;
    }

    /* If encrypted key length is invalid don't bother */

    if (kekri->encryptedKey->length < 16) {
        FUNC2(CMS_F_CMS_RECIPIENTINFO_KEKRI_DECRYPT,
               CMS_R_INVALID_ENCRYPTED_KEY_LENGTH);
        goto err;
    }

    if (FUNC0(kekri->key, kekri->keylen << 3, &actx)) {
        FUNC2(CMS_F_CMS_RECIPIENTINFO_KEKRI_DECRYPT,
               CMS_R_ERROR_SETTING_KEY);
        goto err;
    }

    ukey = FUNC6(kekri->encryptedKey->length - 8);

    if (ukey == NULL) {
        FUNC2(CMS_F_CMS_RECIPIENTINFO_KEKRI_DECRYPT, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    ukeylen = FUNC1(&actx, NULL, ukey,
                             kekri->encryptedKey->data,
                             kekri->encryptedKey->length);

    if (ukeylen <= 0) {
        FUNC2(CMS_F_CMS_RECIPIENTINFO_KEKRI_DECRYPT, CMS_R_UNWRAP_ERROR);
        goto err;
    }

    ec->key = ukey;
    ec->keylen = ukeylen;

    r = 1;

 err:

    if (!r)
        FUNC5(ukey);
    FUNC4(&actx, sizeof(actx));

    return r;

}