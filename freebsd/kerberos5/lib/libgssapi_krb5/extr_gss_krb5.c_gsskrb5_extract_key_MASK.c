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
typedef  int /*<<< orphan*/  krb5_keyblock ;
typedef  void* krb5_error_code ;
typedef  int /*<<< orphan*/ * krb5_context ;
typedef  scalar_t__ gss_ctx_id_t ;
typedef  TYPE_2__* gss_buffer_set_t ;
typedef  int /*<<< orphan*/  gss_OID ;
struct TYPE_7__ {int count; TYPE_1__* elements; } ;
struct TYPE_6__ {int /*<<< orphan*/  length; int /*<<< orphan*/  value; } ;
typedef  void* OM_uint32 ;

/* Variables and functions */
 void* EINVAL ; 
 void* ENOMEM ; 
 TYPE_2__* GSS_C_NO_BUFFER_SET ; 
 scalar_t__ GSS_C_NO_CONTEXT ; 
 void* GSS_S_COMPLETE ; 
 void* GSS_S_FAILURE ; 
 int /*<<< orphan*/ * FUNC0 (int,int) ; 
 void* FUNC1 (void**,scalar_t__,int /*<<< orphan*/  const,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC2 (void**,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ **) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static OM_uint32
FUNC9(OM_uint32 *minor_status,
		    gss_ctx_id_t context_handle,
		    const gss_OID oid, 
		    krb5_keyblock **keyblock)
{
    krb5_error_code ret;
    gss_buffer_set_t data_set = GSS_C_NO_BUFFER_SET;
    OM_uint32 major_status;
    krb5_context context = NULL;
    krb5_storage *sp = NULL;

    if (context_handle == GSS_C_NO_CONTEXT) {
	ret = EINVAL;
	return GSS_S_FAILURE;
    }
    
    ret = FUNC5(&context);
    if(ret) {
	*minor_status = ret;
	return GSS_S_FAILURE;
    }

    major_status =
	FUNC1 (minor_status,
					context_handle,
					oid,
					&data_set);
    if (major_status)
	return major_status;
    
    if (data_set == GSS_C_NO_BUFFER_SET || data_set->count != 1) {
	FUNC2(minor_status, &data_set);
	*minor_status = EINVAL;
	return GSS_S_FAILURE;
    }

    sp = FUNC8(data_set->elements[0].value,
			       data_set->elements[0].length);
    if (sp == NULL) {
	ret = ENOMEM;
	goto out;
    }
    
    *keyblock = FUNC0(1, sizeof(**keyblock));
    if (keyblock == NULL) {
	ret = ENOMEM;
	goto out;
    }

    ret = FUNC6(sp, *keyblock);

out: 
    FUNC2(minor_status, &data_set);
    if (sp)
	FUNC7(sp);
    if (ret && keyblock) {
	FUNC4(context, *keyblock);
	*keyblock = NULL;
    }
    if (context)
	FUNC3(context);

    *minor_status = ret;
    if (ret)
	return GSS_S_FAILURE;

    return GSS_S_COMPLETE;
}