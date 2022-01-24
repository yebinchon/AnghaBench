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
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_3__ {int flags; int /*<<< orphan*/  nid; } ;
typedef  TYPE_1__ TLS_GROUP_INFO ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EVP_PKEY_EC ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int TLS_CURVE_CUSTOM ; 
 int TLS_CURVE_TYPE ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ) ; 

EVP_PKEY *FUNC9(uint16_t id)
{
    EVP_PKEY_CTX *pctx = NULL;
    EVP_PKEY *pkey = NULL;
    const TLS_GROUP_INFO *ginf = FUNC8(id);

    if (ginf == NULL)
        goto err;

    if ((ginf->flags & TLS_CURVE_TYPE) == TLS_CURVE_CUSTOM) {
        pkey = FUNC4();
        if (pkey != NULL && FUNC7(pkey, ginf->nid))
            return pkey;
        FUNC3(pkey);
        return NULL;
    }

    pctx = FUNC1(EVP_PKEY_EC, NULL);
    if (pctx == NULL)
        goto err;
    if (FUNC6(pctx) <= 0)
        goto err;
    if (FUNC2(pctx, ginf->nid) <= 0)
        goto err;
    if (FUNC5(pctx, &pkey) <= 0) {
        FUNC3(pkey);
        pkey = NULL;
    }

 err:
    FUNC0(pctx);
    return pkey;
}