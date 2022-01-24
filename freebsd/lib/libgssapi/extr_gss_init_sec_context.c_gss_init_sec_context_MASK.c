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
struct _gss_name {int dummy; } ;
struct _gss_mechanism_name {int /*<<< orphan*/  gmn_name; } ;
struct _gss_mech_switch {scalar_t__ (* gm_init_sec_context ) (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/ **,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ;int /*<<< orphan*/  gm_mech_oid; } ;
struct _gss_context {int /*<<< orphan*/  gc_ctx; struct _gss_mech_switch* gc_mech; } ;
typedef  scalar_t__ gss_name_t ;
typedef  scalar_t__ gss_ctx_id_t ;
typedef  int /*<<< orphan*/  gss_cred_id_t ;
typedef  int /*<<< orphan*/  gss_channel_bindings_t ;
typedef  int /*<<< orphan*/  gss_buffer_t ;
typedef  int /*<<< orphan*/ * gss_OID ;
struct TYPE_3__ {scalar_t__ count; int /*<<< orphan*/ * elements; } ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/ * GSS_C_NO_OID ; 
 TYPE_1__* GSS_C_NO_OID_SET ; 
 scalar_t__ GSS_S_BAD_MECH ; 
 scalar_t__ GSS_S_COMPLETE ; 
 scalar_t__ GSS_S_CONTINUE_NEEDED ; 
 scalar_t__ GSS_S_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct _gss_mech_switch* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (scalar_t__*,struct _gss_name*,int /*<<< orphan*/ *,struct _gss_mechanism_name**) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const,int /*<<< orphan*/ *) ; 
 TYPE_1__* _gss_mech_oids ; 
 int /*<<< orphan*/  FUNC5 (struct _gss_mech_switch*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct _gss_context*) ; 
 struct _gss_context* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct _gss_context*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/ **,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 

OM_uint32
FUNC10(OM_uint32 * minor_status,
    const gss_cred_id_t initiator_cred_handle,
    gss_ctx_id_t * context_handle,
    const gss_name_t target_name,
    const gss_OID input_mech_type,
    OM_uint32 req_flags,
    OM_uint32 time_req,
    const gss_channel_bindings_t input_chan_bindings,
    const gss_buffer_t input_token,
    gss_OID * actual_mech_type,
    gss_buffer_t output_token,
    OM_uint32 * ret_flags,
    OM_uint32 * time_rec)
{
	OM_uint32 major_status;
	struct _gss_mech_switch *m;
	struct _gss_name *name = (struct _gss_name *) target_name;
	struct _gss_mechanism_name *mn;
	struct _gss_context *ctx = (struct _gss_context *) *context_handle;
	gss_cred_id_t cred_handle;
	int allocated_ctx;
	gss_OID mech_type = input_mech_type;

	*minor_status = 0;

	FUNC0(output_token);
	if (actual_mech_type)
		*actual_mech_type = GSS_C_NO_OID;
	if (ret_flags)
		*ret_flags = 0;
	if (time_rec)
		*time_rec = 0;

	/*
	 * If we haven't allocated a context yet, do so now and lookup
	 * the mechanism switch table. If we have one already, make
	 * sure we use the same mechanism switch as before.
	 */
	if (!ctx) {
		if (mech_type == GSS_C_NO_OID) {
			FUNC3();
			if (_gss_mech_oids == GSS_C_NO_OID_SET
			    || _gss_mech_oids->count == 0)
				return (GSS_S_BAD_MECH);
			mech_type = &_gss_mech_oids->elements[0];
		}

		ctx = FUNC7(sizeof(struct _gss_context));
		if (!ctx) {
			*minor_status = ENOMEM;
			return (GSS_S_FAILURE);
		}
		FUNC8(ctx, 0, sizeof(struct _gss_context));
		m = ctx->gc_mech = FUNC1(mech_type);
		if (!m) {
			FUNC6(ctx);
			return (GSS_S_BAD_MECH);
		}
		allocated_ctx = 1;
	} else {
		m = ctx->gc_mech;
		mech_type = &ctx->gc_mech->gm_mech_oid;
		allocated_ctx = 0;
	}

	/*
	 * Find the MN for this mechanism.
	 */
	major_status = FUNC2(minor_status, name, mech_type, &mn);
	if (major_status != GSS_S_COMPLETE) {
		if (allocated_ctx)
			FUNC6(ctx);
		return (major_status);
	}

	/*
	 * If we have a cred, find the cred for this mechanism.
	 */
	cred_handle = FUNC4(initiator_cred_handle, mech_type);

	major_status = m->gm_init_sec_context(minor_status,
	    cred_handle,
	    &ctx->gc_ctx,
	    mn->gmn_name,
	    mech_type,
	    req_flags,
	    time_req,
	    input_chan_bindings,
	    input_token,
	    actual_mech_type,
	    output_token,
	    ret_flags,
	    time_rec);

	if (major_status != GSS_S_COMPLETE
	    && major_status != GSS_S_CONTINUE_NEEDED) {
		if (allocated_ctx)
			FUNC6(ctx);
		FUNC0(output_token);
		FUNC5(m, major_status, *minor_status);
	} else {
		*context_handle = (gss_ctx_id_t) ctx;
	}

	return (major_status);
}