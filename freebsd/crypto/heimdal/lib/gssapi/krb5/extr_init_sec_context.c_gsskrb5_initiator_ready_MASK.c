#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  TYPE_1__* gsskrb5_ctx ;
struct TYPE_4__ {int more_flags; int /*<<< orphan*/  state; int /*<<< orphan*/  order; int /*<<< orphan*/  auth_context; int /*<<< orphan*/ * ccache; int /*<<< orphan*/ * kcred; scalar_t__ flags; } ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 int CLOSE_CCACHE ; 
 scalar_t__ GSS_S_COMPLETE ; 
 int /*<<< orphan*/  INITIATOR_READY ; 
 int IS_CFX ; 
 int OPEN ; 
 scalar_t__ FUNC0 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static OM_uint32
FUNC6(
	OM_uint32 * minor_status,
	gsskrb5_ctx ctx,
	krb5_context context)
{
    OM_uint32 ret;
    int32_t seq_number;
    int is_cfx = 0;
    OM_uint32 flags = ctx->flags;

    FUNC5(context, ctx->kcred);
    ctx->kcred = NULL;

    if (ctx->more_flags & CLOSE_CCACHE)
	FUNC4(context, ctx->ccache);
    ctx->ccache = NULL;

    FUNC3 (context, ctx->auth_context, &seq_number);

    FUNC2(context, ctx, 0);
    is_cfx = (ctx->more_flags & IS_CFX);

    ret = FUNC0(minor_status,
				   &ctx->order,
				   FUNC1(flags),
				   seq_number, 0, is_cfx);
    if (ret) return ret;

    ctx->state	= INITIATOR_READY;
    ctx->more_flags	|= OPEN;

    return GSS_S_COMPLETE;
}