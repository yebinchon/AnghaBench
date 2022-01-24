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
struct TYPE_3__ {int /*<<< orphan*/ * pctx; } ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  TYPE_1__ CMS_KeyAgreeRecipientInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(CMS_KeyAgreeRecipientInfo *kari,
                                         EVP_PKEY *pk)
{
    EVP_PKEY_CTX *pctx = NULL;
    EVP_PKEY *ekey = NULL;
    int rv = 0;
    pctx = FUNC1(pk, NULL);
    if (!pctx)
        goto err;
    if (FUNC5(pctx) <= 0)
        goto err;
    if (FUNC4(pctx, &ekey) <= 0)
        goto err;
    FUNC0(pctx);
    pctx = FUNC1(ekey, NULL);
    if (!pctx)
        goto err;
    if (FUNC2(pctx) <= 0)
        goto err;
    kari->pctx = pctx;
    rv = 1;
 err:
    if (!rv)
        FUNC0(pctx);
    FUNC3(ekey);
    return rv;
}