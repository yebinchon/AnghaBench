#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/ * krb5_ccache ;
typedef  scalar_t__ int32_t ;
typedef  TYPE_1__* gsskrb5_ctx ;
typedef  TYPE_2__* gsskrb5_cred ;
typedef  int /*<<< orphan*/ * gss_cred_id_t ;
struct TYPE_5__ {int /*<<< orphan*/  cred_flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  auth_context; int /*<<< orphan*/  fwd_data; int /*<<< orphan*/  source; } ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  GSS_CF_DESTROY_CRED_ON_RELEASE ; 
 int /*<<< orphan*/  GSS_C_DELEG_FLAG ; 
 scalar_t__ GSS_S_COMPLETE ; 
 scalar_t__ GSS_S_FAILURE ; 
 int /*<<< orphan*/  KRB5_AUTH_CONTEXT_DO_TIME ; 
 scalar_t__ FUNC0 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  krb5_cc_type_memory ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static OM_uint32
FUNC9
(OM_uint32 * minor_status,
 gsskrb5_ctx ctx,
 krb5_context context,
 gss_cred_id_t * delegated_cred_handle
    )
{
    krb5_ccache ccache = NULL;
    krb5_error_code kret;
    int32_t ac_flags, ret = GSS_S_COMPLETE;

    *minor_status = 0;

    /* XXX Create a new delegated_cred_handle? */
    if (delegated_cred_handle == NULL) {
	kret = FUNC4 (context, &ccache);
    } else {
	*delegated_cred_handle = NULL;
	kret = FUNC7 (context, krb5_cc_type_memory,
				   NULL, &ccache);
    }
    if (kret) {
	ctx->flags &= ~GSS_C_DELEG_FLAG;
	goto out;
    }

    kret = FUNC6(context, ccache, ctx->source);
    if (kret) {
	ctx->flags &= ~GSS_C_DELEG_FLAG;
	goto out;
    }

    FUNC1(context,
			      ctx->auth_context,
			      KRB5_AUTH_CONTEXT_DO_TIME,
			      &ac_flags);
    kret = FUNC8(context,
			 ctx->auth_context,
			 ccache,
			 &ctx->fwd_data);
    FUNC2(context,
			   ctx->auth_context,
			   ac_flags);
    if (kret) {
	ctx->flags &= ~GSS_C_DELEG_FLAG;
	ret = GSS_S_FAILURE;
	*minor_status = kret;
	goto out;
    }

    if (delegated_cred_handle) {
	gsskrb5_cred handle;

	ret = FUNC0(minor_status,
					ccache,
					NULL,
					NULL,
					delegated_cred_handle);
	if (ret != GSS_S_COMPLETE)
	    goto out;

	handle = (gsskrb5_cred) *delegated_cred_handle;

	handle->cred_flags |= GSS_CF_DESTROY_CRED_ON_RELEASE;
	FUNC3(context, ccache);
	ccache = NULL;
    }

out:
    if (ccache) {
	/* Don't destroy the default cred cache */
	if (delegated_cred_handle == NULL)
	    FUNC3(context, ccache);
	else
	    FUNC5(context, ccache);
    }
    return ret;
}