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
struct nb_ctx {scalar_t__ nb_scope; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 

void
FUNC1(struct nb_ctx *ctx)
{
	if (ctx == NULL)
		return;
	if (ctx->nb_scope)
		FUNC0(ctx->nb_scope);
}