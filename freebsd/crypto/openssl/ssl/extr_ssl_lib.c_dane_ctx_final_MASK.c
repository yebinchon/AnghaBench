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
struct dane_ctx_st {scalar_t__ mdmax; int /*<<< orphan*/ * mdord; int /*<<< orphan*/ * mdevp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct dane_ctx_st *dctx)
{
    FUNC0(dctx->mdevp);
    dctx->mdevp = NULL;

    FUNC0(dctx->mdord);
    dctx->mdord = NULL;
    dctx->mdmax = 0;
}