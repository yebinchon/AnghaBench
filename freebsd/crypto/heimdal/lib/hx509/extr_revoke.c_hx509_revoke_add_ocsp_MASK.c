#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* hx509_revoke_ctx ;
typedef  int /*<<< orphan*/  hx509_context ;
struct TYPE_9__ {int /*<<< orphan*/ * path; } ;
struct TYPE_7__ {size_t len; TYPE_3__* val; } ;
struct TYPE_8__ {TYPE_1__ ocsps; } ;

/* Variables and functions */
 int ENOMEM ; 
 int HX509_UNSUPPORTED_OPERATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 void* FUNC5 (TYPE_3__*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (char const*,char*,int) ; 

int
FUNC9(hx509_context context,
		      hx509_revoke_ctx ctx,
		      const char *path)
{
    void *data;
    int ret;
    size_t i;

    if (FUNC8(path, "FILE:", 5) != 0) {
	FUNC2(context, 0, HX509_UNSUPPORTED_OPERATION,
			       "unsupport type in %s", path);
	return HX509_UNSUPPORTED_OPERATION;
    }

    path += 5;

    for (i = 0; i < ctx->ocsps.len; i++) {
	if (FUNC6(ctx->ocsps.val[0].path, path) == 0)
	    return 0;
    }

    data = FUNC5(ctx->ocsps.val,
		   (ctx->ocsps.len + 1) * sizeof(ctx->ocsps.val[0]));
    if (data == NULL) {
	FUNC1(context);
	return ENOMEM;
    }

    ctx->ocsps.val = data;

    FUNC4(&ctx->ocsps.val[ctx->ocsps.len], 0,
	   sizeof(ctx->ocsps.val[0]));

    ctx->ocsps.val[ctx->ocsps.len].path = FUNC7(path);
    if (ctx->ocsps.val[ctx->ocsps.len].path == NULL) {
	FUNC1(context);
	return ENOMEM;
    }

    ret = FUNC3(context, &ctx->ocsps.val[ctx->ocsps.len]);
    if (ret) {
	FUNC0(ctx->ocsps.val[ctx->ocsps.len].path);
	return ret;
    }
    ctx->ocsps.len++;

    return ret;
}