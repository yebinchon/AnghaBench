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
struct eth_p_oui_iface {int /*<<< orphan*/  l2; int /*<<< orphan*/  list; int /*<<< orphan*/  receiver; struct eth_p_oui_iface* iface; } ;
struct eth_p_oui_ctx {int /*<<< orphan*/  l2; int /*<<< orphan*/  list; int /*<<< orphan*/  receiver; struct eth_p_oui_ctx* iface; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct eth_p_oui_iface*) ; 

void FUNC4(struct eth_p_oui_ctx *ctx)
{
	struct eth_p_oui_iface *iface;

	if (!ctx)
		return;

	iface = ctx->iface;

	FUNC0(&ctx->list);
	FUNC3(ctx);

	if (FUNC1(&iface->receiver)) {
		FUNC0(&iface->list);
		FUNC2(iface->l2);
		FUNC3(iface);
	}
}