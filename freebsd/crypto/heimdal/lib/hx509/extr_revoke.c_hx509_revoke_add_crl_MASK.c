#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* hx509_revoke_ctx ;
typedef  int /*<<< orphan*/  hx509_context ;
struct TYPE_8__ {int /*<<< orphan*/ * path; int /*<<< orphan*/  crl; int /*<<< orphan*/  last_modfied; } ;
struct TYPE_6__ {size_t len; TYPE_3__* val; } ;
struct TYPE_7__ {TYPE_1__ crls; } ;

/* Variables and functions */
 int ENOMEM ; 
 int HX509_UNSUPPORTED_OPERATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,char const*) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
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
    size_t i;
    int ret;

    if (FUNC8(path, "FILE:", 5) != 0) {
	FUNC2(context, 0, HX509_UNSUPPORTED_OPERATION,
			       "unsupport type in %s", path);
	return HX509_UNSUPPORTED_OPERATION;
    }


    path += 5;

    for (i = 0; i < ctx->crls.len; i++) {
	if (FUNC6(ctx->crls.val[0].path, path) == 0)
	    return 0;
    }

    data = FUNC5(ctx->crls.val,
		   (ctx->crls.len + 1) * sizeof(ctx->crls.val[0]));
    if (data == NULL) {
	FUNC1(context);
	return ENOMEM;
    }
    ctx->crls.val = data;

    FUNC4(&ctx->crls.val[ctx->crls.len], 0, sizeof(ctx->crls.val[0]));

    ctx->crls.val[ctx->crls.len].path = FUNC7(path);
    if (ctx->crls.val[ctx->crls.len].path == NULL) {
	FUNC1(context);
	return ENOMEM;
    }

    ret = FUNC3(path,
		   &ctx->crls.val[ctx->crls.len].last_modfied,
		   &ctx->crls.val[ctx->crls.len].crl);
    if (ret) {
	FUNC0(ctx->crls.val[ctx->crls.len].path);
	return ret;
    }

    ctx->crls.len++;

    return ret;
}