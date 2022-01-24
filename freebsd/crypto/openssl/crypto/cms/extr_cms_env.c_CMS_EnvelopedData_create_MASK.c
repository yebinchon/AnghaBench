#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  encryptedContentInfo; } ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;
typedef  TYPE_1__ CMS_EnvelopedData ;
typedef  int /*<<< orphan*/  CMS_ContentInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  CMS_F_CMS_ENVELOPEDDATA_CREATE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 

CMS_ContentInfo *FUNC5(const EVP_CIPHER *cipher)
{
    CMS_ContentInfo *cms;
    CMS_EnvelopedData *env;
    cms = FUNC1();
    if (cms == NULL)
        goto merr;
    env = FUNC4(cms);
    if (env == NULL)
        goto merr;
    if (!FUNC3(env->encryptedContentInfo,
                                   cipher, NULL, 0))
        goto merr;
    return cms;
 merr:
    FUNC0(cms);
    FUNC2(CMS_F_CMS_ENVELOPEDDATA_CREATE, ERR_R_MALLOC_FAILURE);
    return NULL;
}