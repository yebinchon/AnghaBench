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
typedef  int /*<<< orphan*/  krb5_kt_cursor ;
typedef  int /*<<< orphan*/  krb5_keytab_entry ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  TYPE_1__* gsskrb5_cred ;
typedef  int /*<<< orphan*/  gss_name_t ;
typedef  int /*<<< orphan*/  gss_cred_usage_t ;
typedef  scalar_t__ gss_const_OID ;
struct TYPE_3__ {int /*<<< orphan*/ * keytab; scalar_t__ principal; } ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 scalar_t__ GSS_C_NO_OID ; 
 scalar_t__ GSS_S_COMPLETE ; 
 scalar_t__ GSS_S_FAILURE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static OM_uint32 FUNC7
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
    krb5_error_code kret;

    ret = GSS_S_FAILURE;

    if (credential_type != GSS_C_NO_OID) {
	kret = EINVAL;
	goto end;
    }

    kret = FUNC0(context, &handle->keytab);
    if (kret)
	goto end;

    /* check that the requested principal exists in the keytab */
    if (handle->principal) {
	krb5_keytab_entry entry;

	kret = FUNC4(context, handle->keytab,
				 handle->principal, 0, 0, &entry);
	if (kret)
	    goto end;
	FUNC3(context, &entry);
	ret = GSS_S_COMPLETE;
    } else {
	/*
	 * Check if there is at least one entry in the keytab before
	 * declaring it as an useful keytab.
	 */
	krb5_keytab_entry tmp;
	krb5_kt_cursor c;

	kret = FUNC6 (context, handle->keytab, &c);
	if (kret)
	    goto end;
	if (FUNC5(context, handle->keytab, &tmp, &c) == 0) {
	    FUNC3(context, &tmp);
	    ret = GSS_S_COMPLETE; /* ok found one entry */
	}
	FUNC2 (context, handle->keytab, &c);
    }
end:
    if (ret != GSS_S_COMPLETE) {
	if (handle->keytab != NULL)
	    FUNC1(context, handle->keytab);
	if (kret != 0) {
	    *minor_status = kret;
	}
    }
    return (ret);
}