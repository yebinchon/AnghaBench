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
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  int /*<<< orphan*/ * krb5_principal ;
typedef  int /*<<< orphan*/ * krb5_keytab ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/ * krb5_ccache ;
typedef  scalar_t__ gss_cred_id_t ;
typedef  TYPE_1__* gss_buffer_t ;
struct TYPE_3__ {int /*<<< orphan*/  length; int /*<<< orphan*/  value; } ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 scalar_t__ GSS_C_NO_CREDENTIAL ; 
 scalar_t__ GSS_S_FAILURE ; 
 scalar_t__ FUNC0 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static OM_uint32
FUNC11(OM_uint32 *minor_status,
	    krb5_context context,
            gss_cred_id_t *cred_handle,
            const gss_buffer_t value)
{
    OM_uint32 major_stat;
    krb5_error_code ret;
    krb5_principal keytab_principal = NULL;
    krb5_keytab keytab = NULL;
    krb5_storage *sp = NULL;
    krb5_ccache id = NULL;
    char *str;

    if (cred_handle == NULL || *cred_handle != GSS_C_NO_CREDENTIAL) {
	*minor_status = 0;
	return GSS_S_FAILURE;
    }

    sp = FUNC10(value->value, value->length);
    if (sp == NULL) {
	*minor_status = 0;
	return GSS_S_FAILURE;
    }

    /* credential cache name */
    ret = FUNC8(sp, &str);
    if (ret) {
	*minor_status = ret;
	major_stat =  GSS_S_FAILURE;
	goto out;
    }
    if (str[0]) {
	ret = FUNC3(context, str, &id);
	if (ret) {
	    *minor_status = ret;
	    major_stat =  GSS_S_FAILURE;
	    goto out;
	}
    }
    FUNC1(str);
    str = NULL;

    /* keytab principal name */
    ret = FUNC8(sp, &str);
    if (ret == 0 && str[0])
	ret = FUNC7(context, str, &keytab_principal);
    if (ret) {
	*minor_status = ret;
	major_stat = GSS_S_FAILURE;
	goto out;
    }
    FUNC1(str);
    str = NULL;

    /* keytab principal */
    ret = FUNC8(sp, &str);
    if (ret) {
	*minor_status = ret;
	major_stat =  GSS_S_FAILURE;
	goto out;
    }
    if (str[0]) {
	ret = FUNC6(context, str, &keytab);
	if (ret) {
	    *minor_status = ret;
	    major_stat =  GSS_S_FAILURE;
	    goto out;
	}
    }
    FUNC1(str);
    str = NULL;

    major_stat = FUNC0(minor_status, id, keytab_principal,
					   keytab, cred_handle);
out:
    if (id)
	FUNC2(context, id);
    if (keytab_principal)
	FUNC4(context, keytab_principal);
    if (keytab)
	FUNC5(context, keytab);
    if (str)
	FUNC1(str);
    if (sp)
	FUNC9(sp);

    return major_stat;
}