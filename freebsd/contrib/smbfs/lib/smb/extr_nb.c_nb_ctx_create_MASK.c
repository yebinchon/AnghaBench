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
struct nb_ctx {int /*<<< orphan*/  nb_smbtcpport; int /*<<< orphan*/  nb_nmbtcpport; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  NMB_TCP_PORT ; 
 int /*<<< orphan*/  SMB_TCP_PORT ; 
 int /*<<< orphan*/  FUNC0 (struct nb_ctx*,int) ; 
 struct nb_ctx* FUNC1 (int) ; 

int
FUNC2(struct nb_ctx **ctxpp)
{
	struct nb_ctx *ctx;

	ctx = FUNC1(sizeof(struct nb_ctx));
	if (ctx == NULL)
		return ENOMEM;
	FUNC0(ctx, sizeof(struct nb_ctx));
	ctx->nb_nmbtcpport = NMB_TCP_PORT;
	ctx->nb_smbtcpport = SMB_TCP_PORT;

	*ctxpp = ctx;
	return 0;
}