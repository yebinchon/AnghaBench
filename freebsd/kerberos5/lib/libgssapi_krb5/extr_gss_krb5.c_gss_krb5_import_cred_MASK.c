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
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  int /*<<< orphan*/  krb5_keytab ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_6__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_ccache ;
typedef  int /*<<< orphan*/  gss_cred_id_t ;
struct TYPE_7__ {int /*<<< orphan*/  length; int /*<<< orphan*/  value; } ;
typedef  TYPE_2__ gss_buffer_desc ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  GSS_C_NO_CREDENTIAL ; 
 int /*<<< orphan*/  GSS_KRB5_IMPORT_CRED_X ; 
 scalar_t__ GSS_S_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 

OM_uint32
FUNC12(OM_uint32 *minor_status,
		     krb5_ccache id,
		     krb5_principal keytab_principal,
		     krb5_keytab keytab,
		     gss_cred_id_t *cred)
{
    gss_buffer_desc buffer;
    OM_uint32 major_status;
    krb5_context context;
    krb5_error_code ret;
    krb5_storage *sp;
    krb5_data data;
    char *str;

    *cred = GSS_C_NO_CREDENTIAL;

    ret = FUNC5(&context);
    if (ret) {
	*minor_status = ret;
	return GSS_S_FAILURE;
    }

    sp = FUNC7();
    if (sp == NULL) {
	*minor_status = ENOMEM;
	major_status = GSS_S_FAILURE;
	goto out;
    }

    if (id) {
	ret = FUNC2(context, id, &str);
	if (ret == 0) {
	    ret = FUNC10(sp, str);
	    FUNC0(str);
	}
    } else
	ret = FUNC10(sp, "");
    if (ret) {
	*minor_status = ret;
	major_status = GSS_S_FAILURE;
	goto out;
    }

    if (keytab_principal) {
	ret = FUNC11(context, keytab_principal, &str);
	if (ret == 0) {
	    ret = FUNC10(sp, str);
	    FUNC0(str);
	}
    } else
	FUNC10(sp, "");
    if (ret) {
	*minor_status = ret;
	major_status = GSS_S_FAILURE;
	goto out;
    }


    if (keytab) {
	ret = FUNC6(context, keytab, &str);
	if (ret == 0) {
	    ret = FUNC10(sp, str);
	    FUNC0(str);
	}
    } else
	FUNC10(sp, "");
    if (ret) {
	*minor_status = ret;
	major_status = GSS_S_FAILURE;
	goto out;
    }

    ret = FUNC9(sp, &data);
    if (ret) {
	*minor_status = ret;
	major_status = GSS_S_FAILURE;
	goto out;
    }

    buffer.value = data.data;
    buffer.length = data.length;
    
    major_status = FUNC1(minor_status,
				       cred,
				       GSS_KRB5_IMPORT_CRED_X,
				       &buffer);
    FUNC3(&data);
out:
    if (sp)
	FUNC8(sp);
    FUNC4(context);
    return major_status;
}