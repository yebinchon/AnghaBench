#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  TYPE_2__* gsskrb5_ctx ;
typedef  int /*<<< orphan*/  gss_cred_id_t ;
struct TYPE_6__ {scalar_t__ length; } ;
struct TYPE_7__ {int more_flags; int flags; int /*<<< orphan*/  state; TYPE_1__ fwd_data; int /*<<< orphan*/  auth_context; int /*<<< orphan*/  order; } ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  ACCEPTOR_READY ; 
 int GSS_C_DELEG_FLAG ; 
 int GSS_C_MUTUAL_FLAG ; 
 scalar_t__ GSS_S_COMPLETE ; 
 int IS_CFX ; 
 int OPEN ; 
 scalar_t__ FUNC0 (scalar_t__*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 scalar_t__ FUNC3 (scalar_t__*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static OM_uint32
FUNC6(OM_uint32 * minor_status,
		       gsskrb5_ctx ctx,
		       krb5_context context,
		       gss_cred_id_t *delegated_cred_handle)
{
    OM_uint32 ret;
    int32_t seq_number;
    int is_cfx = 0;

    FUNC4 (context,
				      ctx->auth_context,
				      &seq_number);

    FUNC2(context, ctx, 1);
    is_cfx = (ctx->more_flags & IS_CFX);

    ret = FUNC0(minor_status,
				   &ctx->order,
				   FUNC1(ctx->flags),
				   seq_number, 0, is_cfx);
    if (ret)
	return ret;

    /*
     * If requested, set local sequence num to remote sequence if this
     * isn't a mutual authentication context
     */
    if (!(ctx->flags & GSS_C_MUTUAL_FLAG) && FUNC1(ctx->flags)) {
	FUNC5(context,
					ctx->auth_context,
					seq_number);
    }

    /*
     * We should handle the delegation ticket, in case it's there
     */
    if (ctx->fwd_data.length > 0 && (ctx->flags & GSS_C_DELEG_FLAG)) {
	ret = FUNC3(minor_status,
					     ctx,
					     context,
					     delegated_cred_handle);
	if (ret)
	    return ret;
    } else {
	/* Well, looks like it wasn't there after all */
	ctx->flags &= ~GSS_C_DELEG_FLAG;
    }

    ctx->state = ACCEPTOR_READY;
    ctx->more_flags |= OPEN;

    return GSS_S_COMPLETE;
}