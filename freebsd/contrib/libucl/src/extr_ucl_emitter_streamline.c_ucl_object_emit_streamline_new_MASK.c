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
typedef  int /*<<< orphan*/  ucl_object_t ;
struct ucl_emitter_functions {int dummy; } ;
struct ucl_emitter_context_streamline {int /*<<< orphan*/  const* top; struct ucl_emitter_functions* func; } ;
struct ucl_emitter_context {int dummy; } ;
typedef  enum ucl_emitter { ____Placeholder_ucl_emitter } ucl_emitter ;

/* Variables and functions */
 struct ucl_emitter_context_streamline* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ucl_emitter_context_streamline*,struct ucl_emitter_context const*,int) ; 
 struct ucl_emitter_context* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ucl_emitter_context*,int /*<<< orphan*/  const*) ; 

struct ucl_emitter_context*
FUNC4 (const ucl_object_t *obj,
		enum ucl_emitter emit_type,
		struct ucl_emitter_functions *emitter)
{
	const struct ucl_emitter_context *ctx;
	struct ucl_emitter_context_streamline *sctx;

	ctx = FUNC2 (emit_type);
	if (ctx == NULL) {
		return NULL;
	}

	sctx = FUNC0 (1, sizeof (*sctx));
	if (sctx == NULL) {
		return NULL;
	}

	FUNC1 (sctx, ctx, sizeof (*ctx));
	sctx->func = emitter;
	sctx->top = obj;

	FUNC3 ((struct ucl_emitter_context *)sctx,
			obj);

	return (struct ucl_emitter_context *)sctx;
}