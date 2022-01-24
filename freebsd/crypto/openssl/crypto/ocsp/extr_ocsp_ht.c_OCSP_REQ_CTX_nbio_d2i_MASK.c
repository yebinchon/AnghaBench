#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  state; int /*<<< orphan*/  mem; } ;
typedef  TYPE_1__ OCSP_REQ_CTX ;
typedef  int /*<<< orphan*/  ASN1_VALUE ;
typedef  int /*<<< orphan*/  ASN1_ITEM ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,unsigned char const**,int,int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned char const**) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  OHS_ERROR ; 

int FUNC3(OCSP_REQ_CTX *rctx,
                          ASN1_VALUE **pval, const ASN1_ITEM *it)
{
    int rv, len;
    const unsigned char *p;

    rv = FUNC2(rctx);
    if (rv != 1)
        return rv;

    len = FUNC1(rctx->mem, &p);
    *pval = FUNC0(NULL, &p, len, it);
    if (*pval == NULL) {
        rctx->state = OHS_ERROR;
        return 0;
    }
    return 1;
}