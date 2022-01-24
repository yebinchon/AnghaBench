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
struct ub_ctx {int /*<<< orphan*/  local_zones; } ;

/* Variables and functions */
 int UB_NOERROR ; 
 int UB_NOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC1 (struct ub_ctx*) ; 

int FUNC2(struct ub_ctx* ctx, const char *data)
{
	int res = FUNC1(ctx);
	if (res) return res;

	res = FUNC0(ctx->local_zones, data);
	return (!res) ? UB_NOMEM : UB_NOERROR;
}