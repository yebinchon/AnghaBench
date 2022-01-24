#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * krb5_principal ;
typedef  int /*<<< orphan*/ * krb5_keytab ;
typedef  int /*<<< orphan*/  krb5_get_init_creds_opt ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_11__ {int /*<<< orphan*/  endtime; } ;
struct TYPE_12__ {int /*<<< orphan*/ * client; TYPE_1__ times; } ;
typedef  TYPE_2__ krb5_creds ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/ * krb5_ccache ;
typedef  TYPE_3__* gsskrb5_cred ;
typedef  int /*<<< orphan*/  gss_name_t ;
typedef  int /*<<< orphan*/  gss_cred_usage_t ;
typedef  scalar_t__ gss_const_OID ;
typedef  TYPE_4__* gss_buffer_t ;
typedef  int /*<<< orphan*/  cred ;
struct TYPE_14__ {int /*<<< orphan*/  value; } ;
struct TYPE_13__ {int /*<<< orphan*/ * ccache; int /*<<< orphan*/  lifetime; int /*<<< orphan*/ * principal; int /*<<< orphan*/  cred_flags; } ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  GSS_CF_DESTROY_CRED_ON_RELEASE ; 
 int /*<<< orphan*/  GSS_C_CRED_PASSWORD ; 
 scalar_t__ GSS_C_NO_OID ; 
 scalar_t__ GSS_S_COMPLETE ; 
 scalar_t__ GSS_S_FAILURE ; 
 scalar_t__ KRB5_NOCREDS_SUPPLIED ; 
 scalar_t__ FUNC0 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  krb5_cc_type_memory ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static OM_uint32 FUNC22
		  (OM_uint32 * minor_status,
		   krb5_context context,
		   gss_const_OID credential_type,
		   const void *credential_data,
		   const gss_name_t desired_name,
		   OM_uint32 time_req,
		   gss_const_OID desired_mech,
		   gss_cred_usage_t cred_usage,
		   gsskrb5_cred handle
		  )
{
    OM_uint32 ret;
    krb5_creds cred;
    krb5_principal def_princ;
    krb5_get_init_creds_opt *opt;
    krb5_ccache ccache;
    krb5_keytab keytab;
    krb5_error_code kret;

    keytab = NULL;
    ccache = NULL;
    def_princ = NULL;
    ret = GSS_S_FAILURE;
    FUNC21(&cred, 0, sizeof(cred));

    /*
     * If we have a preferred principal, lets try to find it in all
     * caches, otherwise, fall back to default cache, ignore all
     * errors while searching.
     */

    if (credential_type != GSS_C_NO_OID &&
	!FUNC2(credential_type, GSS_C_CRED_PASSWORD)) {
	kret = KRB5_NOCREDS_SUPPLIED; /* XXX */
	goto end;
    }

    if (handle->principal) {
	kret = FUNC3 (context,
				    handle->principal,
				    &ccache);
	if (kret == 0) {
	    ret = GSS_S_COMPLETE;
	    goto found;
	}
    }

    if (ccache == NULL) {
	kret = FUNC5(context, &ccache);
	if (kret)
	    goto end;
    }
    kret = FUNC7(context, ccache, &def_princ);
    if (kret != 0) {
	/* we'll try to use a keytab below */
	FUNC4(context, ccache);
	def_princ = NULL;
	kret = 0;
    } else if (handle->principal == NULL)  {
	kret = FUNC11(context, def_princ, &handle->principal);
	if (kret)
	    goto end;
    } else if (handle->principal != NULL &&
	       FUNC20(context, handle->principal,
				      def_princ) == FALSE) {
	FUNC13(context, def_princ);
	def_princ = NULL;
	FUNC4(context, ccache);
	ccache = NULL;
    }
    if (def_princ == NULL) {
	/* We have no existing credentials cache,
	 * so attempt to get a TGT using a keytab.
	 */
	if (handle->principal == NULL) {
	    kret = FUNC14(context, &handle->principal);
	    if (kret)
		goto end;
	}
	kret = FUNC16(context, &opt);
	if (kret)
	    goto end;
	if (credential_type != GSS_C_NO_OID &&
	    FUNC2(credential_type, GSS_C_CRED_PASSWORD)) {
	    gss_buffer_t password = (gss_buffer_t)credential_data;

	    /* XXX are we requiring password to be NUL terminated? */

	    kret = FUNC18(context, &cred,
						handle->principal,
						password->value,
						NULL, NULL, 0, NULL, opt);
	} else {
	    kret = FUNC1(context, &keytab);
	    if (kret) {
		FUNC17(context, opt);
		goto end;
	    }
	    kret = FUNC15(context, &cred,
					      handle->principal, keytab,
					      0, NULL, opt);
	}
	FUNC17(context, opt);
	if (kret)
	    goto end;
	kret = FUNC9(context, krb5_cc_type_memory,
				  NULL, &ccache);
	if (kret)
	    goto end;
	kret = FUNC8(context, ccache, cred.client);
	if (kret) {
	    FUNC6(context, ccache);
	    goto end;
	}
	kret = FUNC10(context, ccache, &cred);
	if (kret) {
	    FUNC6(context, ccache);
	    goto end;
	}
	handle->lifetime = cred.times.endtime;
	handle->cred_flags |= GSS_CF_DESTROY_CRED_ON_RELEASE;
    } else {

	ret = FUNC0(minor_status,
					context,
					ccache,
					handle->principal,
					&handle->lifetime);
	if (ret != GSS_S_COMPLETE) {
	    FUNC4(context, ccache);
	    goto end;
	}
	kret = 0;
    }
 found:
    handle->ccache = ccache;
    ret = GSS_S_COMPLETE;

end:
    if (cred.client != NULL)
	FUNC12(context, &cred);
    if (def_princ != NULL)
	FUNC13(context, def_princ);
    if (keytab != NULL)
	FUNC19(context, keytab);
    if (ret != GSS_S_COMPLETE && kret != 0)
	*minor_status = kret;
    return (ret);
}