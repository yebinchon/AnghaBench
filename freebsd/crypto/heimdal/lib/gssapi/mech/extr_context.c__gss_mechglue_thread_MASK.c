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
struct mg_thread_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct mg_thread_ctx* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct mg_thread_ctx*,int) ; 
 struct mg_thread_ctx* FUNC5 (int,int) ; 
 int /*<<< orphan*/  context_key ; 
 int /*<<< orphan*/  context_mutex ; 
 int created_key ; 
 int /*<<< orphan*/  destroy_context ; 
 int /*<<< orphan*/  FUNC6 (struct mg_thread_ctx*) ; 

__attribute__((used)) static struct mg_thread_ctx *
FUNC7(void)
{
    struct mg_thread_ctx *ctx;
    int ret = 0;

    FUNC0(&context_mutex);

    if (!created_key) {
	FUNC3(&context_key, destroy_context, ret);
	if (ret) {
	    FUNC1(&context_mutex);
	    return NULL;
	}
	created_key = 1;
    }
    FUNC1(&context_mutex);

    ctx = FUNC2(context_key);
    if (ctx == NULL) {

	ctx = FUNC5(1, sizeof(*ctx));
	if (ctx == NULL)
	    return NULL;
	FUNC4(context_key, ctx, ret);
	if (ret) {
	    FUNC6(ctx);
	    return NULL;
	}
    }
    return ctx;
}