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
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_3__ {int /*<<< orphan*/  Nr; int /*<<< orphan*/  ek; } ;
typedef  TYPE_1__ rijndael_ctx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

void
FUNC1(const rijndael_ctx *ctx, const u_char *src, u_char *dst)
{

	FUNC0(ctx->ek, ctx->Nr, src, dst);
}