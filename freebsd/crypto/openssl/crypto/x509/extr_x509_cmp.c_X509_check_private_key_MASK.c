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
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  X509_F_X509_CHECK_PRIVATE_KEY ; 
 int /*<<< orphan*/  X509_R_KEY_TYPE_MISMATCH ; 
 int /*<<< orphan*/  X509_R_KEY_VALUES_MISMATCH ; 
 int /*<<< orphan*/  X509_R_UNKNOWN_KEY_TYPE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(const X509 *x, const EVP_PKEY *k)
{
    const EVP_PKEY *xk;
    int ret;

    xk = FUNC1(x);

    if (xk)
        ret = FUNC0(xk, k);
    else
        ret = -2;

    switch (ret) {
    case 1:
        break;
    case 0:
        FUNC2(X509_F_X509_CHECK_PRIVATE_KEY, X509_R_KEY_VALUES_MISMATCH);
        break;
    case -1:
        FUNC2(X509_F_X509_CHECK_PRIVATE_KEY, X509_R_KEY_TYPE_MISMATCH);
        break;
    case -2:
        FUNC2(X509_F_X509_CHECK_PRIVATE_KEY, X509_R_UNKNOWN_KEY_TYPE);
    }
    if (ret > 0)
        return 1;
    return 0;
}