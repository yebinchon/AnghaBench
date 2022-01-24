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
typedef  int /*<<< orphan*/  PKCS7 ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  PKCS7_F_PKCS7_FINAL ; 
 int /*<<< orphan*/  PKCS7_R_PKCS7_DATASIGN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

int FUNC6(PKCS7 *p7, BIO *data, int flags)
{
    BIO *p7bio;
    int ret = 0;

    if ((p7bio = FUNC3(p7, NULL)) == NULL) {
        FUNC4(PKCS7_F_PKCS7_FINAL, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    FUNC5(data, p7bio, flags);

    (void)FUNC0(p7bio);

    if (!FUNC2(p7, p7bio)) {
        FUNC4(PKCS7_F_PKCS7_FINAL, PKCS7_R_PKCS7_DATASIGN);
        goto err;
    }

    ret = 1;

 err:
    FUNC1(p7bio);

    return ret;

}