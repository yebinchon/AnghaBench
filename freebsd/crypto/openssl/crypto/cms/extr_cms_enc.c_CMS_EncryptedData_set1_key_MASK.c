#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * encryptedContentInfo; scalar_t__ version; } ;
struct TYPE_5__ {TYPE_3__* encryptedData; } ;
struct TYPE_6__ {TYPE_1__ d; int /*<<< orphan*/  contentType; } ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;
typedef  int /*<<< orphan*/  CMS_EncryptedContentInfo ;
typedef  TYPE_2__ CMS_ContentInfo ;

/* Variables and functions */
 int /*<<< orphan*/  CMS_EncryptedData ; 
 int /*<<< orphan*/  CMS_F_CMS_ENCRYPTEDDATA_SET1_KEY ; 
 int /*<<< orphan*/  CMS_R_NOT_ENCRYPTED_DATA ; 
 int /*<<< orphan*/  CMS_R_NO_KEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ NID_pkcs7_encrypted ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned char const*,size_t) ; 

int FUNC5(CMS_ContentInfo *cms, const EVP_CIPHER *ciph,
                               const unsigned char *key, size_t keylen)
{
    CMS_EncryptedContentInfo *ec;
    if (!key || !keylen) {
        FUNC0(CMS_F_CMS_ENCRYPTEDDATA_SET1_KEY, CMS_R_NO_KEY);
        return 0;
    }
    if (ciph) {
        cms->d.encryptedData = FUNC1(CMS_EncryptedData);
        if (!cms->d.encryptedData) {
            FUNC0(CMS_F_CMS_ENCRYPTEDDATA_SET1_KEY, ERR_R_MALLOC_FAILURE);
            return 0;
        }
        cms->contentType = FUNC2(NID_pkcs7_encrypted);
        cms->d.encryptedData->version = 0;
    } else if (FUNC3(cms->contentType) != NID_pkcs7_encrypted) {
        FUNC0(CMS_F_CMS_ENCRYPTEDDATA_SET1_KEY, CMS_R_NOT_ENCRYPTED_DATA);
        return 0;
    }
    ec = cms->d.encryptedData->encryptedContentInfo;
    return FUNC4(ec, ciph, key, keylen);
}