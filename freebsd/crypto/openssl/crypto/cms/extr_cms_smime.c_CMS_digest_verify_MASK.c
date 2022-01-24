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
 int /*<<< orphan*/  CMS_F_CMS_DIGEST_VERIFY ; 
 int /*<<< orphan*/  CMS_R_TYPE_NOT_DIGESTED_DATA ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ NID_pkcs7_digest ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC8(CMS_ContentInfo *cms, BIO *dcont, BIO *out,
                      unsigned int flags)
{
    BIO *cont;
    int r;
    if (FUNC3(FUNC1(cms)) != NID_pkcs7_digest) {
        FUNC2(CMS_F_CMS_DIGEST_VERIFY, CMS_R_TYPE_NOT_DIGESTED_DATA);
        return 0;
    }

    if (!dcont && !FUNC4(cms))
        return 0;

    cont = FUNC0(cms, dcont);
    if (!cont)
        return 0;
    r = FUNC6(out, cont, flags);
    if (r)
        r = FUNC5(cms, cont, 1);
    FUNC7(cont, dcont);
    return r;
}