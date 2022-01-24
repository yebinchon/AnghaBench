#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  this_cred ;
typedef  scalar_t__ krb5_timestamp ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_12__ {int /*<<< orphan*/  keytype; } ;
struct TYPE_11__ {scalar_t__ endtime; } ;
struct TYPE_14__ {TYPE_2__ session; TYPE_1__ times; int /*<<< orphan*/ * server; int /*<<< orphan*/  client; } ;
typedef  TYPE_4__ krb5_creds ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_ccache ;
typedef  TYPE_5__* gsskrb5_ctx ;
typedef  int /*<<< orphan*/  gss_name_t ;
struct TYPE_13__ {int /*<<< orphan*/  endtime; } ;
struct TYPE_16__ {TYPE_3__ times; } ;
struct TYPE_15__ {int /*<<< orphan*/  lifetime; TYPE_8__* kcred; int /*<<< orphan*/ * target; int /*<<< orphan*/  source; } ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 scalar_t__ GSS_C_INDEFINITE ; 
 scalar_t__ GSS_S_COMPLETE ; 
 scalar_t__ GSS_S_CONTEXT_EXPIRED ; 
 scalar_t__ GSS_S_FAILURE ; 
 int /*<<< orphan*/  KEYTYPE_NULL ; 
 scalar_t__ FUNC0 (scalar_t__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,TYPE_8__**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static OM_uint32
FUNC7(
        OM_uint32 * minor_status,
	krb5_context context,
	krb5_ccache ccache,
	gsskrb5_ctx ctx,
	const gss_name_t target_name,
	int use_dns,
	OM_uint32 time_req,
	OM_uint32 * time_rec)
{
    OM_uint32 ret;
    krb5_error_code kret;
    krb5_creds this_cred;
    OM_uint32 lifetime_rec;

    if (ctx->target) {
	FUNC3(context, ctx->target);
	ctx->target = NULL;
    }
    if (ctx->kcred) {
	FUNC2(context, ctx->kcred);
	ctx->kcred = NULL;
    }

    ret = FUNC0(minor_status, context, use_dns,
			      ctx->source, target_name, &ctx->target);
    if (ret)
	return ret;

    FUNC6(&this_cred, 0, sizeof(this_cred));
    this_cred.client = ctx->source;
    this_cred.server = ctx->target;

    if (time_req && time_req != GSS_C_INDEFINITE) {
	krb5_timestamp ts;

	FUNC5 (context, &ts);
	this_cred.times.endtime = ts + time_req;
    } else {
	this_cred.times.endtime   = 0;
    }

    this_cred.session.keytype = KEYTYPE_NULL;

    kret = FUNC4(context,
				0,
				ccache,
				&this_cred,
				&ctx->kcred);
    if (kret) {
	*minor_status = kret;
	return GSS_S_FAILURE;
    }

    ctx->lifetime = ctx->kcred->times.endtime;

    ret = FUNC1(minor_status, context,
				 ctx->lifetime, &lifetime_rec);
    if (ret) return ret;

    if (lifetime_rec == 0) {
	*minor_status = 0;
	return GSS_S_CONTEXT_EXPIRED;
    }

    if (time_rec) *time_rec = lifetime_rec;

    return GSS_S_COMPLETE;
}