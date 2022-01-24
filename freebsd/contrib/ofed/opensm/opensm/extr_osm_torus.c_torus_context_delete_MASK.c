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
struct torus_context {scalar_t__ torus; int /*<<< orphan*/  fabric; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct torus_context*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static
void FUNC3(void *context)
{
	struct torus_context *ctx = context;

	FUNC1(&ctx->fabric);
	if (ctx->torus)
		FUNC2(ctx->torus);
	FUNC0(ctx);
}