#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509_EXTENSION ;
struct TYPE_5__ {int /*<<< orphan*/ * crlTime; int /*<<< orphan*/ * crlNum; int /*<<< orphan*/ * crlUrl; } ;
typedef  TYPE_1__ OCSP_CRLID ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  NID_id_pkix_OCSP_CrlID ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 TYPE_1__* FUNC7 () ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

X509_EXTENSION *FUNC9(const char *url, long *n, char *tim)
{
    X509_EXTENSION *x = NULL;
    OCSP_CRLID *cid = NULL;

    if ((cid = FUNC7()) == NULL)
        goto err;
    if (url) {
        if ((cid->crlUrl = FUNC2()) == NULL)
            goto err;
        if (!(FUNC5(cid->crlUrl, url, -1)))
            goto err;
    }
    if (n) {
        if ((cid->crlNum = FUNC3()) == NULL)
            goto err;
        if (!(FUNC4(cid->crlNum, *n)))
            goto err;
    }
    if (tim) {
        if ((cid->crlTime = FUNC0()) == NULL)
            goto err;
        if (!(FUNC1(cid->crlTime, tim)))
            goto err;
    }
    x = FUNC8(NID_id_pkix_OCSP_CrlID, 0, cid);
 err:
    FUNC6(cid);
    return x;
}