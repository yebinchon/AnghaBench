#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ucl_object_t ;
struct ucl_emitter_functions {int dummy; } ;
struct ucl_emitter_context {TYPE_1__* ops; int /*<<< orphan*/  const* comments; int /*<<< orphan*/  const* top; scalar_t__ indent; struct ucl_emitter_functions* func; } ;
typedef  int /*<<< orphan*/  my_ctx ;
typedef  enum ucl_emitter { ____Placeholder_ucl_emitter } ucl_emitter ;
struct TYPE_2__ {int /*<<< orphan*/  (* ucl_emitter_write_elt ) (struct ucl_emitter_context*,int /*<<< orphan*/  const*,int,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ucl_emitter_context*,struct ucl_emitter_context const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ucl_emitter_context*,int /*<<< orphan*/  const*,int,int) ; 
 struct ucl_emitter_context* FUNC2 (int) ; 

bool
FUNC3 (const ucl_object_t *obj, enum ucl_emitter emit_type,
		struct ucl_emitter_functions *emitter,
		const ucl_object_t *comments)
{
	const struct ucl_emitter_context *ctx;
	struct ucl_emitter_context my_ctx;
	bool res = false;

	ctx = FUNC2 (emit_type);
	if (ctx != NULL) {
		FUNC0 (&my_ctx, ctx, sizeof (my_ctx));
		my_ctx.func = emitter;
		my_ctx.indent = 0;
		my_ctx.top = obj;
		my_ctx.comments = comments;

		my_ctx.ops->ucl_emitter_write_elt (&my_ctx, obj, true, false);
		res = true;
	}

	return res;
}