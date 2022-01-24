#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  EVP_CIPHER ;
typedef  int /*<<< orphan*/  CMS_ContentInfo ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 unsigned int CMS_DETACHED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  CMS_F_CMS_ENCRYPTEDDATA_ENCRYPT ; 
 unsigned int CMS_PARTIAL ; 
 int /*<<< orphan*/  CMS_R_NO_CIPHER ; 
 unsigned int CMS_STREAM ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

CMS_ContentInfo *FUNC6(BIO *in, const EVP_CIPHER *cipher,
                                           const unsigned char *key,
                                           size_t keylen, unsigned int flags)
{
    CMS_ContentInfo *cms;
    if (!cipher) {
        FUNC5(CMS_F_CMS_ENCRYPTEDDATA_ENCRYPT, CMS_R_NO_CIPHER);
        return NULL;
    }
    cms = FUNC1();
    if (cms == NULL)
        return NULL;
    if (!FUNC2(cms, cipher, key, keylen))
        return NULL;

    if (!(flags & CMS_DETACHED))
        FUNC4(cms, 0);

    if ((flags & (CMS_STREAM | CMS_PARTIAL))
        || FUNC3(cms, in, NULL, flags))
        return cms;

    FUNC0(cms);
    return NULL;
}