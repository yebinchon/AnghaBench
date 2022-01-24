#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509V3_EXT_METHOD ;
struct TYPE_5__ {int /*<<< orphan*/  location; int /*<<< orphan*/  method; } ;
struct TYPE_4__ {int /*<<< orphan*/  locator; int /*<<< orphan*/  issuer; } ;
typedef  TYPE_1__ OCSP_SERVICELOC ;
typedef  int /*<<< orphan*/  BIO ;
typedef  TYPE_2__ ACCESS_DESCRIPTION ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XN_FLAG_ONELINE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(const X509V3_EXT_METHOD *method, void *in,
                               BIO *bp, int ind)
{
    int i;
    OCSP_SERVICELOC *a = in;
    ACCESS_DESCRIPTION *ad;

    if (FUNC0(bp, "%*sIssuer: ", ind, "") <= 0)
        goto err;
    if (FUNC3(bp, a->issuer, 0, XN_FLAG_ONELINE) <= 0)
        goto err;
    for (i = 0; i < FUNC5(a->locator); i++) {
        ad = FUNC6(a->locator, i);
        if (FUNC0(bp, "\n%*s", (2 * ind), "") <= 0)
            goto err;
        if (FUNC4(bp, ad->method) <= 0)
            goto err;
        if (FUNC1(bp, " - ") <= 0)
            goto err;
        if (FUNC2(bp, ad->location) <= 0)
            goto err;
    }
    return 1;
 err:
    return 0;
}