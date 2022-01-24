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
struct ucl_emitter_context_streamline {int /*<<< orphan*/ * containers; } ;
struct ucl_emitter_context {int dummy; } ;

/* Variables and functions */
 struct ucl_emitter_context_streamline* FUNC0 (struct ucl_emitter_context*) ; 
 int /*<<< orphan*/  FUNC1 (struct ucl_emitter_context_streamline*) ; 
 int /*<<< orphan*/  FUNC2 (struct ucl_emitter_context*) ; 

void
FUNC3 (struct ucl_emitter_context *ctx)
{
	struct ucl_emitter_context_streamline *sctx = FUNC0(ctx);

	while (sctx->containers != NULL) {
		FUNC2 (ctx);
	}

	FUNC1 (sctx);
}