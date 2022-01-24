#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct _gss_name {int dummy; } ;
struct _gss_mechanism_name {scalar_t__ gmn_name; } ;
struct _gss_mechanism_cred {int dummy; } ;
struct _gss_cred {int /*<<< orphan*/  gc_mc; } ;
typedef  int /*<<< orphan*/  gssapi_mech_interface ;
typedef  scalar_t__ gss_name_t ;
typedef  int /*<<< orphan*/  gss_cred_usage_t ;
typedef  scalar_t__ gss_cred_id_t ;
typedef  scalar_t__ gss_const_OID ;
struct TYPE_4__ {int count; int /*<<< orphan*/ * elements; } ;
typedef  TYPE_1__ gss_OID_set_desc ;
typedef  int /*<<< orphan*/ * gss_OID ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 scalar_t__ const GSS_C_NO_NAME ; 
 scalar_t__ GSS_C_NO_OID ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ GSS_S_BAD_MECH ; 
 scalar_t__ GSS_S_CALL_INACCESSIBLE_READ ; 
 scalar_t__ GSS_S_COMPLETE ; 
 scalar_t__ GSS_S_FAILURE ; 
 scalar_t__ GSS_S_NO_CRED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct _gss_mechanism_cred*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (scalar_t__*,int /*<<< orphan*/ ,struct _gss_mechanism_name*,scalar_t__,void const*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,struct _gss_mechanism_cred**) ; 
 scalar_t__ FUNC6 (scalar_t__*,struct _gss_name*,int /*<<< orphan*/ *,struct _gss_mechanism_name**) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_1__* _gss_mech_oids ; 
 struct _gss_cred* FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct _gss_cred*) ; 
 int /*<<< orphan*/  gmc_link ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*,int /*<<< orphan*/ *,TYPE_1__*,int*) ; 

OM_uint32
FUNC11(OM_uint32 *minor_status,
    const gss_name_t desired_name,
    gss_const_OID credential_type,
    const void *credential_data,
    OM_uint32 time_req,
    gss_const_OID desired_mech,
    gss_cred_usage_t cred_usage,
    gss_cred_id_t *output_cred_handle)
{
    OM_uint32 major_status;
    struct _gss_name *name = (struct _gss_name *) desired_name;
    gssapi_mech_interface m;
    struct _gss_cred *cred;
    gss_OID_set_desc set, *mechs;
    size_t i;

    *minor_status = 0;
    if (output_cred_handle == NULL)
	return GSS_S_CALL_INACCESSIBLE_READ;

    FUNC7();

    if (desired_mech != GSS_C_NO_OID) {
	int match = 0;

	FUNC10(minor_status, (gss_OID)desired_mech,
				_gss_mech_oids, &match);
	if (!match)
	    return GSS_S_BAD_MECH;

	set.count = 1;
	set.elements = (gss_OID)desired_mech;
	mechs = &set;
    } else
	mechs = _gss_mech_oids;

    cred = FUNC8(1, sizeof(*cred));
    if (cred == NULL) {
	*minor_status = ENOMEM;
	return GSS_S_FAILURE;
    }

    FUNC2(&cred->gc_mc);

    for (i = 0; i < mechs->count; i++) {
	struct _gss_mechanism_name *mn = NULL;
	struct _gss_mechanism_cred *mc = NULL;
	gss_name_t desired_mech_name = GSS_C_NO_NAME;

	m = FUNC4(&mechs->elements[i]);
	if (!m)
	    continue;

	if (desired_name != GSS_C_NO_NAME) {
	    major_status = FUNC6(minor_status, name,
					&mechs->elements[i], &mn);
	    if (major_status != GSS_S_COMPLETE)
		continue;

	    desired_mech_name = mn->gmn_name;
	}

	major_status = FUNC5(minor_status, m, mn,
					      credential_type, credential_data,
					      time_req, desired_mech, cred_usage,
					      &mc);
	if (FUNC0(major_status))
	    continue;

	FUNC3(&cred->gc_mc, mc, gmc_link);
    }

    /*
     * If we didn't manage to create a single credential, return
     * an error.
     */
    if (!FUNC1(&cred->gc_mc)) {
	FUNC9(cred);
	*minor_status = 0;
	return GSS_S_NO_CRED;
    }

    *output_cred_handle = (gss_cred_id_t) cred;
    *minor_status = 0;
    return GSS_S_COMPLETE;
}