#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  pmd; int /*<<< orphan*/  qbits; int /*<<< orphan*/  nbits; } ;
struct TYPE_5__ {scalar_t__ pkey_gencb; TYPE_2__* data; } ;
typedef  TYPE_1__ EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  TYPE_2__ DSA_PKEY_CTX ;
typedef  int /*<<< orphan*/  DSA ;
typedef  int /*<<< orphan*/  BN_GENCB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC7(EVP_PKEY_CTX *ctx, EVP_PKEY *pkey)
{
    DSA *dsa = NULL;
    DSA_PKEY_CTX *dctx = ctx->data;
    BN_GENCB *pcb;
    int ret;

    if (ctx->pkey_gencb) {
        pcb = FUNC1();
        if (pcb == NULL)
            return 0;
        FUNC6(pcb, ctx);
    } else
        pcb = NULL;
    dsa = FUNC3();
    if (dsa == NULL) {
        FUNC0(pcb);
        return 0;
    }
    ret = FUNC5(dsa, dctx->nbits, dctx->qbits, dctx->pmd,
                               NULL, 0, NULL, NULL, NULL, pcb);
    FUNC0(pcb);
    if (ret)
        FUNC4(pkey, dsa);
    else
        FUNC2(dsa);
    return ret;
}