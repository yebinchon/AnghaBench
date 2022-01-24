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
struct TYPE_4__ {int counter; int flags; int /*<<< orphan*/  mod; int /*<<< orphan*/ * A; int /*<<< orphan*/ * Ai; int /*<<< orphan*/ * m_ctx; int /*<<< orphan*/ * e; } ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  TYPE_1__ BN_BLINDING ;

/* Variables and functions */
 int BN_BLINDING_COUNTER ; 
 int BN_BLINDING_NO_RECREATE ; 
 int BN_BLINDING_NO_UPDATE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  BN_F_BN_BLINDING_UPDATE ; 
 int /*<<< orphan*/  BN_R_NOT_INITIALIZED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC4(BN_BLINDING *b, BN_CTX *ctx)
{
    int ret = 0;

    if ((b->A == NULL) || (b->Ai == NULL)) {
        FUNC2(BN_F_BN_BLINDING_UPDATE, BN_R_NOT_INITIALIZED);
        goto err;
    }

    if (b->counter == -1)
        b->counter = 0;

    if (++b->counter == BN_BLINDING_COUNTER && b->e != NULL &&
        !(b->flags & BN_BLINDING_NO_RECREATE)) {
        /* re-create blinding parameters */
        if (!FUNC0(b, NULL, NULL, ctx, NULL, NULL))
            goto err;
    } else if (!(b->flags & BN_BLINDING_NO_UPDATE)) {
        if (b->m_ctx != NULL) {
            if (!FUNC3(b->Ai, b->Ai, b->Ai, b->m_ctx, ctx)
                || !FUNC3(b->A, b->A, b->A, b->m_ctx, ctx))
                goto err;
        } else {
            if (!FUNC1(b->Ai, b->Ai, b->Ai, b->mod, ctx)
                || !FUNC1(b->A, b->A, b->A, b->mod, ctx))
                goto err;
        }
    }

    ret = 1;
 err:
    if (b->counter == BN_BLINDING_COUNTER)
        b->counter = 0;
    return ret;
}