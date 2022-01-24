#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct _gss_name {int /*<<< orphan*/  gn_mn; int /*<<< orphan*/  gn_value; int /*<<< orphan*/  gn_type; } ;
typedef  scalar_t__ gss_name_t ;
typedef  TYPE_1__* gss_buffer_t ;
typedef  scalar_t__ gss_OID ;
struct TYPE_5__ {scalar_t__ length; } ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 scalar_t__ GSS_C_NO_NAME ; 
 scalar_t__ GSS_C_NO_OID ; 
 scalar_t__ GSS_C_NT_ANONYMOUS ; 
 scalar_t__ GSS_C_NT_EXPORT_NAME ; 
 scalar_t__ GSS_C_NT_HOSTBASED_SERVICE ; 
 scalar_t__ GSS_C_NT_HOSTBASED_SERVICE_X ; 
 scalar_t__ GSS_C_NT_MACHINE_UID_NAME ; 
 scalar_t__ GSS_C_NT_STRING_UID_NAME ; 
 scalar_t__ GSS_C_NT_USER_NAME ; 
 scalar_t__ GSS_KRB5_NT_PRINCIPAL_NAME ; 
 scalar_t__ GSS_S_BAD_NAME ; 
 scalar_t__ GSS_S_BAD_NAMETYPE ; 
 scalar_t__ GSS_S_COMPLETE ; 
 scalar_t__ GSS_S_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (scalar_t__*,TYPE_1__* const,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (scalar_t__*,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__*,TYPE_1__* const,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct _gss_name*) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,scalar_t__*) ; 
 struct _gss_name* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct _gss_name*,int /*<<< orphan*/ ,int) ; 

OM_uint32
FUNC9(OM_uint32 *minor_status,
    const gss_buffer_t input_name_buffer,
    const gss_OID input_name_type,
    gss_name_t *output_name)
{
	gss_OID			name_type = input_name_type;
	OM_uint32		major_status;
	struct _gss_name	*name;

	*output_name = GSS_C_NO_NAME;

	if (input_name_buffer->length == 0) {
		*minor_status = 0;
		return (GSS_S_BAD_NAME);
	}

	/*
	 * Use GSS_NT_USER_NAME as default name type.
	 */
	if (name_type == GSS_C_NO_OID)
		name_type = GSS_C_NT_USER_NAME;

	/*
	 * If this is an exported name, we need to parse it to find
	 * the mechanism and then import it as an MN. See RFC 2743
	 * section 3.2 for a description of the format.
	 */
	if (FUNC5(name_type, GSS_C_NT_EXPORT_NAME)) {
		return FUNC3(minor_status,
		    input_name_buffer, output_name);
	}

	/*
	 * Only allow certain name types. This is pretty bogus - we
	 * should figure out the list of supported name types using
	 * gss_inquire_names_for_mech.
	 */
	if (!FUNC5(name_type, GSS_C_NT_USER_NAME)
	    && !FUNC5(name_type, GSS_C_NT_MACHINE_UID_NAME)
	    && !FUNC5(name_type, GSS_C_NT_STRING_UID_NAME)
	    && !FUNC5(name_type, GSS_C_NT_HOSTBASED_SERVICE_X)
	    && !FUNC5(name_type, GSS_C_NT_HOSTBASED_SERVICE)
	    && !FUNC5(name_type, GSS_C_NT_ANONYMOUS)
	    && !FUNC5(name_type, GSS_KRB5_NT_PRINCIPAL_NAME)) {
		*minor_status = 0;
		return (GSS_S_BAD_NAMETYPE);
	}

	*minor_status = 0;
	name = FUNC7(sizeof(struct _gss_name));
	if (!name) {
		*minor_status = ENOMEM;
		return (GSS_S_FAILURE);
	}
	FUNC8(name, 0, sizeof(struct _gss_name));

	major_status = FUNC2(minor_status,
	    name_type, &name->gn_type);
	if (major_status) {
		FUNC4(name);
		return (GSS_S_FAILURE);
	}

	major_status = FUNC1(minor_status,
	    input_name_buffer, &name->gn_value);
	if (major_status) {
		gss_name_t rname = (gss_name_t)name;
		FUNC6(minor_status, &rname);
		return (GSS_S_FAILURE);
	}

	FUNC0(&name->gn_mn);

	*output_name = (gss_name_t) name;
	return (GSS_S_COMPLETE);
}