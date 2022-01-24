#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  TYPE_1__* gsskrb5_ctx ;
typedef  int /*<<< orphan*/ * gss_ctx_id_t ;
typedef  int /*<<< orphan*/  gss_channel_bindings_t ;
typedef  enum gss_ctx_id_t_state { ____Placeholder_gss_ctx_id_t_state } gss_ctx_id_t_state ;
struct TYPE_3__ {int state; int /*<<< orphan*/ * deleg_auth_context; int /*<<< orphan*/ * auth_context; int /*<<< orphan*/  ctx_id_mutex; int /*<<< orphan*/ * crypto; int /*<<< orphan*/ * order; int /*<<< orphan*/  lifetime; int /*<<< orphan*/  fwd_data; int /*<<< orphan*/ * ticket; int /*<<< orphan*/ * service_keyblock; scalar_t__ more_flags; scalar_t__ flags; int /*<<< orphan*/ * ccache; int /*<<< orphan*/ * kcred; int /*<<< orphan*/ * target; int /*<<< orphan*/ * source; } ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  GSS_C_INDEFINITE ; 
 scalar_t__ GSS_S_BAD_BINDINGS ; 
 scalar_t__ GSS_S_COMPLETE ; 
 scalar_t__ GSS_S_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int KRB5_AUTH_CONTEXT_CLEAR_FORWARDED_CRED ; 
 int KRB5_AUTH_CONTEXT_DO_SEQUENCE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const) ; 

OM_uint32
FUNC8(
        OM_uint32 * minor_status,
	gss_ctx_id_t * context_handle,
	krb5_context context,
 	const gss_channel_bindings_t input_chan_bindings,
 	enum gss_ctx_id_t_state state)
{
    krb5_error_code kret;
    gsskrb5_ctx ctx;

    *context_handle = NULL;

    ctx = FUNC6(sizeof(*ctx));
    if (ctx == NULL) {
	*minor_status = ENOMEM;
	return GSS_S_FAILURE;
    }
    ctx->auth_context		= NULL;
    ctx->deleg_auth_context	= NULL;
    ctx->source			= NULL;
    ctx->target			= NULL;
    ctx->kcred			= NULL;
    ctx->ccache			= NULL;
    ctx->state			= state;
    ctx->flags			= 0;
    ctx->more_flags		= 0;
    ctx->service_keyblock	= NULL;
    ctx->ticket			= NULL;
    FUNC5(&ctx->fwd_data);
    ctx->lifetime		= GSS_C_INDEFINITE;
    ctx->order			= NULL;
    ctx->crypto			= NULL;
    FUNC1(&ctx->ctx_id_mutex);

    kret = FUNC4 (context, &ctx->auth_context);
    if (kret) {
	*minor_status = kret;
	FUNC0(&ctx->ctx_id_mutex);
	return GSS_S_FAILURE;
    }

    kret = FUNC4 (context, &ctx->deleg_auth_context);
    if (kret) {
	*minor_status = kret;
	FUNC3(context, ctx->auth_context);
	FUNC0(&ctx->ctx_id_mutex);
	return GSS_S_FAILURE;
    }

    kret = FUNC7(context, ctx->auth_context, input_chan_bindings);
    if (kret) {
	*minor_status = kret;

	FUNC3(context, ctx->auth_context);
	FUNC3(context, ctx->deleg_auth_context);

	FUNC0(&ctx->ctx_id_mutex);

	return GSS_S_BAD_BINDINGS;
    }

    kret = FUNC7(context, ctx->deleg_auth_context, input_chan_bindings);
    if (kret) {
	*minor_status = kret;

	FUNC3(context, ctx->auth_context);
	FUNC3(context, ctx->deleg_auth_context);

	FUNC0(&ctx->ctx_id_mutex);

	return GSS_S_BAD_BINDINGS;
    }

    /*
     * We need a sequence number
     */

    FUNC2(context,
			   ctx->auth_context,
			   KRB5_AUTH_CONTEXT_DO_SEQUENCE |
			   KRB5_AUTH_CONTEXT_CLEAR_FORWARDED_CRED,
			   NULL);

    /*
     * We need a sequence number
     */

    FUNC2(context,
			   ctx->deleg_auth_context,
			   KRB5_AUTH_CONTEXT_DO_SEQUENCE |
			   KRB5_AUTH_CONTEXT_CLEAR_FORWARDED_CRED,
			   NULL);

    *context_handle = (gss_ctx_id_t)ctx;

    return GSS_S_COMPLETE;
}