#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_7__ {scalar_t__ endtime; } ;
struct TYPE_8__ {TYPE_1__ times; int /*<<< orphan*/  server; int /*<<< orphan*/  client; } ;
typedef  TYPE_2__ krb5_creds ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/ * krb5_const_realm ;
typedef  int /*<<< orphan*/  krb5_ccache ;
typedef  int /*<<< orphan*/  in_cred ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 scalar_t__ GSS_S_COMPLETE ; 
 scalar_t__ GSS_S_FAILURE ; 
 scalar_t__ KRB5_PRINC_NOMATCH ; 
 int /*<<< orphan*/  KRB5_TGS_NAME ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

OM_uint32
FUNC7(OM_uint32 *minor_status,
			  krb5_context context,
			  krb5_ccache id,
			  krb5_principal principal,
			  OM_uint32 *lifetime)
{
    krb5_creds in_cred, out_cred;
    krb5_const_realm realm;
    krb5_error_code kret;

    FUNC6(&in_cred, 0, sizeof(in_cred));
    in_cred.client = principal;

    realm = FUNC5(context,  principal);
    if (realm == NULL) {
	FUNC0 ();
	*minor_status = KRB5_PRINC_NOMATCH; /* XXX */
	return GSS_S_FAILURE;
    }

    kret = FUNC4(context, &in_cred.server,
			       realm, KRB5_TGS_NAME, realm, NULL);
    if (kret) {
	*minor_status = kret;
	return GSS_S_FAILURE;
    }

    kret = FUNC1(context, id, 0, &in_cred, &out_cred);
    FUNC3(context, in_cred.server);
    if (kret) {
	*minor_status = 0;
	*lifetime = 0;
	return GSS_S_COMPLETE;
    }

    *lifetime = out_cred.times.endtime;
    FUNC2(context, &out_cred);

    return GSS_S_COMPLETE;
}