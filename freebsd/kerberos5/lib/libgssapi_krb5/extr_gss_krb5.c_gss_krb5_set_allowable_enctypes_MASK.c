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
typedef  int krb5_error_code ;
struct TYPE_6__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ krb5_data ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  gss_cred_id_t ;
struct TYPE_7__ {int /*<<< orphan*/  length; int /*<<< orphan*/  value; } ;
typedef  TYPE_2__ gss_buffer_desc ;
typedef  int OM_uint32 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GSS_KRB5_SET_ALLOWABLE_ENCTYPES_X ; 
 int GSS_S_FAILURE ; 
 int FUNC0 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

OM_uint32
FUNC6(OM_uint32 *minor_status, 
				gss_cred_id_t cred,
				OM_uint32 num_enctypes,
				int32_t *enctypes)
{
    krb5_error_code ret;
    OM_uint32 maj_status;
    gss_buffer_desc buffer;
    krb5_storage *sp;
    krb5_data data;
    int i;

    sp = FUNC2();
    if (sp == NULL) {
	*minor_status = ENOMEM;
	maj_status = GSS_S_FAILURE;
	goto out;
    }

    for (i = 0; i < num_enctypes; i++) {
	ret = FUNC5(sp, enctypes[i]);
	if (ret) {
	    *minor_status = ret;
	    maj_status = GSS_S_FAILURE;
	    goto out;
	}
    }

    ret = FUNC4(sp, &data);
    if (ret) {
	*minor_status = ret;
	maj_status = GSS_S_FAILURE;
	goto out;
    }

    buffer.value = data.data;
    buffer.length = data.length;

    maj_status = FUNC0(minor_status,
				     &cred,
				     GSS_KRB5_SET_ALLOWABLE_ENCTYPES_X,
				     &buffer);
    FUNC1(&data);
out:
    if (sp)
	FUNC3(sp);
    return maj_status;
}