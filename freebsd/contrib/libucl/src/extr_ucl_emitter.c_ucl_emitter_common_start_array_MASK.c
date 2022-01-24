#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ type; struct TYPE_7__* next; } ;
typedef  TYPE_1__ ucl_object_t ;
typedef  int /*<<< orphan*/ * ucl_object_iter_t ;
struct ucl_emitter_functions {int /*<<< orphan*/  ud; int /*<<< orphan*/  (* ucl_emitter_append_len ) (char*,int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* ucl_emitter_append_character ) (char,int,int /*<<< orphan*/ ) ;} ;
struct ucl_emitter_context {int /*<<< orphan*/  indent; struct ucl_emitter_functions* func; } ;

/* Variables and functions */
 scalar_t__ UCL_ARRAY ; 
 int /*<<< orphan*/  FUNC0 (char,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ucl_emitter_context*,TYPE_1__ const*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,struct ucl_emitter_context*,TYPE_1__ const*,int) ; 
 TYPE_1__* FUNC4 (TYPE_1__ const*,int /*<<< orphan*/ **,int) ; 

__attribute__((used)) static void
FUNC5 (struct ucl_emitter_context *ctx,
		const ucl_object_t *obj, bool print_key, bool compact)
{
	const ucl_object_t *cur;
	ucl_object_iter_t iter = NULL;
	const struct ucl_emitter_functions *func = ctx->func;
	bool first = true;

	FUNC3 (print_key, ctx, obj, compact);

	if (compact) {
		func->ucl_emitter_append_character ('[', 1, func->ud);
	}
	else {
		func->ucl_emitter_append_len ("[\n", 2, func->ud);
	}

	ctx->indent ++;

	if (obj->type == UCL_ARRAY) {
		/* explicit array */
		while ((cur = FUNC4 (obj, &iter, true)) != NULL) {
			FUNC2 (ctx, cur, first, false, compact);
			first = false;
		}
	}
	else {
		/* implicit array */
		cur = obj;
		while (cur) {
			FUNC2 (ctx, cur, first, false, compact);
			first = false;
			cur = cur->next;
		}
	}


}