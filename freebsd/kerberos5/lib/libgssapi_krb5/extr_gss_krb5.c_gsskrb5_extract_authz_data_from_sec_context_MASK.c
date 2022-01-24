#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_14__ ;

/* Type definitions */
struct TYPE_18__ {int length; int* components; } ;
typedef  TYPE_2__ heim_oid ;
typedef  scalar_t__ gss_ctx_id_t ;
typedef  TYPE_3__* gss_buffer_t ;
typedef  TYPE_4__* gss_buffer_set_t ;
struct TYPE_21__ {size_t length; int* elements; } ;
typedef  TYPE_5__ gss_OID_desc ;
struct TYPE_20__ {int count; TYPE_1__* elements; } ;
struct TYPE_19__ {int* value; int length; } ;
struct TYPE_17__ {size_t length; int* value; } ;
struct TYPE_16__ {int /*<<< orphan*/  length; int /*<<< orphan*/  elements; } ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 scalar_t__ ENOMEM ; 
 TYPE_4__* GSS_C_NO_BUFFER_SET ; 
 scalar_t__ GSS_C_NO_CONTEXT ; 
 TYPE_14__* GSS_KRB5_EXTRACT_AUTHZ_DATA_FROM_SEC_CONTEXT_X ; 
 scalar_t__ GSS_S_COMPLETE ; 
 scalar_t__ GSS_S_FAILURE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 size_t FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (unsigned char*,size_t,TYPE_2__*,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 scalar_t__ FUNC7 (scalar_t__*,scalar_t__,TYPE_5__*,TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,TYPE_4__**) ; 
 void* FUNC9 (size_t) ; 
 int /*<<< orphan*/  FUNC10 (int*,int*,int) ; 

OM_uint32
FUNC11(OM_uint32 *minor_status,
					    gss_ctx_id_t context_handle,
					    int ad_type,
					    gss_buffer_t ad_data)
{
    gss_buffer_set_t data_set = GSS_C_NO_BUFFER_SET;
    OM_uint32 maj_stat;
    gss_OID_desc oid_flat;
    heim_oid baseoid, oid;
    size_t size;

    if (context_handle == GSS_C_NO_CONTEXT) {
	*minor_status = EINVAL;
	return GSS_S_FAILURE;
    }

    /* All this to append an integer to an oid... */

    if (FUNC3(GSS_KRB5_EXTRACT_AUTHZ_DATA_FROM_SEC_CONTEXT_X->elements,
		    GSS_KRB5_EXTRACT_AUTHZ_DATA_FROM_SEC_CONTEXT_X->length,
		    &baseoid, NULL) != 0) {
	*minor_status = EINVAL;
	return GSS_S_FAILURE;
    }
    
    oid.length = baseoid.length + 1;
    oid.components = FUNC1(oid.length, sizeof(*oid.components));
    if (oid.components == NULL) {
	FUNC2(&baseoid);

	*minor_status = ENOMEM;
	return GSS_S_FAILURE;
    }

    FUNC10(oid.components, baseoid.components, 
	   baseoid.length * sizeof(*baseoid.components));
    
    FUNC2(&baseoid);

    oid.components[oid.length - 1] = ad_type;

    oid_flat.length = FUNC4(&oid);
    oid_flat.elements = FUNC9(oid_flat.length);
    if (oid_flat.elements == NULL) {
	FUNC6(oid.components);
	*minor_status = ENOMEM;
	return GSS_S_FAILURE;
    }

    if (FUNC5((unsigned char *)oid_flat.elements + oid_flat.length - 1, 
		    oid_flat.length, &oid, &size) != 0) {
	FUNC6(oid.components);
	FUNC6(oid_flat.elements);
	*minor_status = EINVAL;
	return GSS_S_FAILURE;
    }
    if (oid_flat.length != size)
	FUNC0();

    FUNC6(oid.components);

    /* FINALLY, we have the OID */

    maj_stat = FUNC7 (minor_status,
					       context_handle,
					       &oid_flat,
					       &data_set);

    FUNC6(oid_flat.elements);

    if (maj_stat)
	return maj_stat;
    
    if (data_set == GSS_C_NO_BUFFER_SET || data_set->count != 1) {
	FUNC8(minor_status, &data_set);
	*minor_status = EINVAL;
	return GSS_S_FAILURE;
    }

    ad_data->value = FUNC9(data_set->elements[0].length);
    if (ad_data->value == NULL) {
	FUNC8(minor_status, &data_set);
	*minor_status = ENOMEM;
	return GSS_S_FAILURE;
    }

    ad_data->length = data_set->elements[0].length;
    FUNC10(ad_data->value, data_set->elements[0].value, ad_data->length);
    FUNC8(minor_status, &data_set);
    
    *minor_status = 0;
    return GSS_S_COMPLETE;
}