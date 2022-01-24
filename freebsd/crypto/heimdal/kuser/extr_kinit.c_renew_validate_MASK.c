#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int renewable; int renew; int validate; int forwardable; int proxiable; scalar_t__ request_anonymous; } ;
struct TYPE_20__ {TYPE_3__ b; scalar_t__ i; } ;
typedef  TYPE_5__ krb5_kdc_flags ;
typedef  int krb5_error_code ;
typedef  scalar_t__ krb5_deltat ;
struct TYPE_19__ {scalar_t__ endtime; } ;
struct TYPE_16__ {int forwardable; int proxiable; } ;
struct TYPE_17__ {TYPE_1__ b; } ;
struct TYPE_21__ {int /*<<< orphan*/  client; TYPE_4__ times; TYPE_2__ flags; int /*<<< orphan*/  server; } ;
typedef  TYPE_6__ krb5_creds ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_ccache ;
typedef  int /*<<< orphan*/  in ;

/* Variables and functions */
 int /*<<< orphan*/  KRB5_GC_CACHED ; 
 scalar_t__ anonymous_flag ; 
 scalar_t__ do_afslog ; 
 int forwardable_flag ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_6__*,TYPE_6__**) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_6__*,TYPE_6__**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 int proxiable_flag ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC13(krb5_context context,
	       int renew,
	       int validate,
	       krb5_ccache cache,
	       const char *server,
	       krb5_deltat life)
{
    krb5_error_code ret;
    krb5_creds in, *out = NULL;
    krb5_kdc_flags flags;

    FUNC11(&in, 0, sizeof(in));

    ret = FUNC3(context, cache, &in.client);
    if(ret) {
	FUNC10(context, ret, "krb5_cc_get_principal");
	return ret;
    }
    ret = FUNC0(context, in.client, server, &in.server);
    if(ret) {
	FUNC10(context, ret, "get_server");
	goto out;
    }

    if (renew) {
	/*
	 * no need to check the error here, it's only to be
	 * friendly to the user
	 */
	FUNC8(context, KRB5_GC_CACHED, cache, &in, &out);
    }

    flags.i = 0;
    flags.b.renewable         = flags.b.renew = renew;
    flags.b.validate          = validate;

    if (forwardable_flag != -1)
	flags.b.forwardable       = forwardable_flag;
    else if (out)
	flags.b.forwardable 	  = out->flags.b.forwardable;

    if (proxiable_flag != -1)
	flags.b.proxiable         = proxiable_flag;
    else if (out)
	flags.b.proxiable 	  = out->flags.b.proxiable;

    if (anonymous_flag)
	flags.b.request_anonymous = anonymous_flag;
    if(life)
	in.times.endtime = FUNC12(NULL) + life;

    if (out) {
	FUNC7 (context, out);
	out = NULL;
    }


    ret = FUNC9(context,
			    cache,
			    flags,
			    NULL,
			    NULL,
			    &in,
			    &out);
    if(ret) {
	FUNC10(context, ret, "krb5_get_kdc_cred");
	goto out;
    }
    ret = FUNC4(context, cache, in.client);
    if(ret) {
	FUNC7 (context, out);
	FUNC10(context, ret, "krb5_cc_initialize");
	goto out;
    }
    ret = FUNC5(context, cache, out);

    if(ret == 0 && server == NULL) {
	/* only do this if it's a general renew-my-tgt request */
#ifndef NO_AFS
	if(do_afslog && FUNC1())
	    FUNC2(context, cache, NULL, NULL);
#endif
    }

    FUNC7 (context, out);
    if(ret) {
	FUNC10(context, ret, "krb5_cc_store_cred");
	goto out;
    }
out:
    FUNC6(context, &in);
    return ret;
}