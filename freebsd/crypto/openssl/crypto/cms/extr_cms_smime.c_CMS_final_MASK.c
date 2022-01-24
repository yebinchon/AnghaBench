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
typedef  int /*<<< orphan*/  CMS_ContentInfo ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CMS_F_CMS_FINAL ; 
 int /*<<< orphan*/  CMS_R_CMS_DATAFINAL_ERROR ; 
 int /*<<< orphan*/  CMS_R_CMS_LIB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC6(CMS_ContentInfo *cms, BIO *data, BIO *dcont, unsigned int flags)
{
    BIO *cmsbio;
    int ret = 0;

    if ((cmsbio = FUNC2(cms, dcont)) == NULL) {
        FUNC3(CMS_F_CMS_FINAL, CMS_R_CMS_LIB);
        return 0;
    }

    FUNC4(data, cmsbio, flags);

    (void)FUNC0(cmsbio);

    if (!FUNC1(cms, cmsbio)) {
        FUNC3(CMS_F_CMS_FINAL, CMS_R_CMS_DATAFINAL_ERROR);
        goto err;
    }

    ret = 1;

 err:
    FUNC5(cmsbio, dcont);

    return ret;

}