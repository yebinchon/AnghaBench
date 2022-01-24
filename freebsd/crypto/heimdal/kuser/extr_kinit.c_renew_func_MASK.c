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
typedef  int time_t ;
struct renew_ctx {int /*<<< orphan*/  principal; int /*<<< orphan*/  ccache; int /*<<< orphan*/  context; int /*<<< orphan*/  ticket_life; } ;
typedef  scalar_t__ krb5_error_code ;

/* Variables and functions */
 scalar_t__ do_afslog ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ renewable_flag ; 
 int /*<<< orphan*/  server_str ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  validate_flag ; 

__attribute__((used)) static time_t
FUNC5(void *ptr)
{
    struct renew_ctx *ctx = ptr;
    krb5_error_code ret;
    time_t expire;
    int new_tickets = 0;

    if (renewable_flag) {
	ret = FUNC3(ctx->context, renewable_flag, validate_flag,
			     ctx->ccache, server_str, ctx->ticket_life);
	if (ret)
	    new_tickets = 1;
    } else
	new_tickets = 1;

    if (new_tickets)
	FUNC0(ctx->context, ctx->principal,
			ctx->ccache, ctx->ticket_life, 0);

#ifndef NO_AFS
    if(do_afslog && FUNC1())
	FUNC2(ctx->context, ctx->ccache, NULL, NULL);
#endif

    expire = FUNC4(ctx->context, ctx->ccache, ctx->principal,
			     server_str) / 2;
    return expire + 1;
}