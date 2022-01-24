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
struct nb_ctx {int /*<<< orphan*/ * nb_scope; } ;

/* Variables and functions */
 int ENAMETOOLONG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char const*) ; 
 size_t FUNC4 (char const*) ; 

int
FUNC5(struct nb_ctx *ctx, const char *scope)
{
	size_t slen = FUNC4(scope);

	if (slen >= 128) {
		FUNC3("scope '%s' is too long", 0, scope);
		return ENAMETOOLONG;
	}
	if (ctx->nb_scope)
		FUNC0(ctx->nb_scope);
	ctx->nb_scope = FUNC1(slen + 1);
	if (ctx->nb_scope == NULL)
		return ENOMEM;
	FUNC2(ctx->nb_scope, scope);
	return 0;
}