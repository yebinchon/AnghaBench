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
struct ucl_emitter_functions {int /*<<< orphan*/  ud; int /*<<< orphan*/  (* ucl_emitter_append_character ) (char,int,int /*<<< orphan*/ ) ;} ;
struct ucl_emitter_context {scalar_t__ id; int /*<<< orphan*/  indent; struct ucl_emitter_functions* func; } ;

/* Variables and functions */
 scalar_t__ UCL_EMIT_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (char,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ucl_emitter_functions const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ucl_emitter_context*,int /*<<< orphan*/  const*,int,int) ; 

__attribute__((used)) static void
FUNC5 (struct ucl_emitter_context *ctx,
		const ucl_object_t *obj, bool compact)
{
	const struct ucl_emitter_functions *func = ctx->func;

	ctx->indent --;
	if (compact) {
		func->ucl_emitter_append_character (']', 1, func->ud);
	}
	else {
		if (ctx->id != UCL_EMIT_CONFIG) {
			/* newline is already added for this format */
			func->ucl_emitter_append_character ('\n', 1, func->ud);
		}
		FUNC3 (func, ctx->indent, compact);
		func->ucl_emitter_append_character (']', 1, func->ud);
	}

	FUNC4 (ctx, obj, compact, true);
}