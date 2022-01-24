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
 int /*<<< orphan*/  CMS_F_CMS_DATA ; 
 int /*<<< orphan*/  CMS_R_TYPE_NOT_DATA ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ NID_pkcs7_data ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 

int FUNC6(CMS_ContentInfo *cms, BIO *out, unsigned int flags)
{
    BIO *cont;
    int r;
    if (FUNC4(FUNC2(cms)) != NID_pkcs7_data) {
        FUNC3(CMS_F_CMS_DATA, CMS_R_TYPE_NOT_DATA);
        return 0;
    }
    cont = FUNC1(cms, NULL);
    if (!cont)
        return 0;
    r = FUNC5(out, cont, flags);
    FUNC0(cont);
    return r;
}