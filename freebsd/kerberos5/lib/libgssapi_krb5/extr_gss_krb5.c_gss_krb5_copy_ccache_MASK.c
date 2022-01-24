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
typedef  int krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_ccache ;
typedef  int /*<<< orphan*/  gss_cred_id_t ;
typedef  TYPE_2__* gss_buffer_set_t ;
struct TYPE_7__ {int count; TYPE_1__* elements; } ;
struct TYPE_6__ {scalar_t__ value; scalar_t__ length; } ;
typedef  int OM_uint32 ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 TYPE_2__* GSS_C_NO_BUFFER_SET ; 
 int /*<<< orphan*/  GSS_KRB5_COPY_CCACHE_X ; 
 int GSS_S_FAILURE ; 
 int FUNC0 (char**,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC3 (int*,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 

OM_uint32
FUNC9(OM_uint32 *minor_status,
		     gss_cred_id_t cred,
		     krb5_ccache out)
{
    gss_buffer_set_t data_set = GSS_C_NO_BUFFER_SET;
    krb5_context context;
    krb5_error_code kret;
    krb5_ccache id;
    OM_uint32 ret;
    char *str;

    ret = FUNC2(minor_status,
				  cred,
				  GSS_KRB5_COPY_CCACHE_X,
				  &data_set);
    if (ret)
	return ret;

    if (data_set == GSS_C_NO_BUFFER_SET || data_set->count != 1) {
	FUNC3(minor_status, &data_set);
	*minor_status = EINVAL;
	return GSS_S_FAILURE;
    }

    kret = FUNC8(&context);
    if (kret) {
	*minor_status = kret;
	FUNC3(minor_status, &data_set);
	return GSS_S_FAILURE;
    }

    kret = FUNC0(&str, "%.*s", (int)data_set->elements[0].length,
		    (char *)data_set->elements[0].value);
    FUNC3(minor_status, &data_set);
    if (kret == -1) {
	*minor_status = ENOMEM;
	return GSS_S_FAILURE;
    }

    kret = FUNC6(context, str, &id);
    FUNC1(str);
    if (kret) {
	*minor_status = kret;
	return GSS_S_FAILURE;
    }

    kret = FUNC5(context, id, out);
    FUNC4(context, id);
    FUNC7(context);
    if (kret) {
	*minor_status = kret;
	return GSS_S_FAILURE;
    }

    return ret;
}