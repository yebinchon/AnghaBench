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
struct nb_ctx {int /*<<< orphan*/ * nb_nsname; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 

int
FUNC2(struct nb_ctx *ctx, const char *addr)
{
	if (addr == NULL || addr[0] == 0)
		return EINVAL;
	if (ctx->nb_nsname)
		FUNC0(ctx->nb_nsname);
	if ((ctx->nb_nsname = FUNC1(addr)) == NULL)
		return ENOMEM;
	return 0;
}