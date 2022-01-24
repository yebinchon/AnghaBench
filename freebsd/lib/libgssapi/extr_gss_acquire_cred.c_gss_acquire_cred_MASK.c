#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct _gss_name {int dummy; } ;
struct _gss_mechanism_name {scalar_t__ const gmn_name; } ;
struct _gss_mechanism_cred {int /*<<< orphan*/  gc_mc; int /*<<< orphan*/  gmc_cred; int /*<<< orphan*/ * gmc_mech_oid; struct _gss_mech_switch* gmc_mech; } ;
struct _gss_mech_switch {scalar_t__ (* gm_acquire_cred ) (scalar_t__*,scalar_t__ const,scalar_t__,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ;int /*<<< orphan*/  (* gm_release_cred ) (scalar_t__*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  gm_mech_oid; } ;
struct _gss_cred {int /*<<< orphan*/  gc_mc; int /*<<< orphan*/  gmc_cred; int /*<<< orphan*/ * gmc_mech_oid; struct _gss_mech_switch* gmc_mech; } ;
typedef  scalar_t__ gss_name_t ;
typedef  int /*<<< orphan*/  gss_cred_usage_t ;
typedef  scalar_t__ gss_cred_id_t ;
struct TYPE_12__ {int count; int /*<<< orphan*/ * elements; } ;
typedef  TYPE_1__ gss_OID_set_desc ;
typedef  TYPE_2__* gss_OID_set ;
struct TYPE_13__ {size_t count; int /*<<< orphan*/ * elements; } ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 scalar_t__ GSS_C_INDEFINITE ; 
 scalar_t__ GSS_C_NO_CREDENTIAL ; 
 scalar_t__ const GSS_C_NO_NAME ; 
 TYPE_2__* GSS_C_NO_OID_SET ; 
 scalar_t__ GSS_S_BAD_MECH ; 
 scalar_t__ GSS_S_COMPLETE ; 
 scalar_t__ GSS_S_FAILURE ; 
 scalar_t__ GSS_S_NO_CRED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct _gss_mechanism_cred*,int /*<<< orphan*/ ) ; 
 struct _gss_mech_switch* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (scalar_t__*,struct _gss_name*,int /*<<< orphan*/ *,struct _gss_mechanism_name**) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_2__* _gss_mech_oids ; 
 int /*<<< orphan*/  FUNC6 (struct _gss_mechanism_cred*) ; 
 int /*<<< orphan*/  gmc_link ; 
 scalar_t__ FUNC7 (scalar_t__*,int /*<<< orphan*/ *,TYPE_2__**) ; 
 scalar_t__ FUNC8 (scalar_t__*,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*,int /*<<< orphan*/ *,TYPE_2__*,int*) ; 
 struct _gss_mechanism_cred* FUNC11 (int) ; 
 scalar_t__ FUNC12 (scalar_t__*,scalar_t__ const,scalar_t__,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__*,int /*<<< orphan*/ *) ; 

OM_uint32
FUNC14(OM_uint32 *minor_status,
    const gss_name_t desired_name,
    OM_uint32 time_req,
    const gss_OID_set desired_mechs,
    gss_cred_usage_t cred_usage,
    gss_cred_id_t *output_cred_handle,
    gss_OID_set *actual_mechs,
    OM_uint32 *time_rec)
{
	OM_uint32 major_status;
	gss_OID_set mechs = desired_mechs;
	gss_OID_set_desc set;
	struct _gss_name *name = (struct _gss_name *) desired_name;
	struct _gss_mech_switch *m;
	struct _gss_cred *cred;
	struct _gss_mechanism_cred *mc;
	struct _gss_mechanism_name *mn;
	OM_uint32 min_time, cred_time;
	size_t i;

	*minor_status = 0;
	if (output_cred_handle)
		*output_cred_handle = GSS_C_NO_CREDENTIAL;
	if (actual_mechs)
		*actual_mechs = GSS_C_NO_OID_SET;
	if (time_rec)
		*time_rec = 0;

	FUNC5();

	/*
	 * First make sure that at least one of the requested
	 * mechanisms is one that we support.
	 */
	if (mechs) {
		for (i = 0; i < mechs->count; i++) {
			int t;
			FUNC10(minor_status,
			    &mechs->elements[i], _gss_mech_oids, &t);
			if (t)
				break;
		}
		if (i == mechs->count) {
			*minor_status = 0;
			return (GSS_S_BAD_MECH);
		}
	} else {
		mechs = _gss_mech_oids;
	}

	if (actual_mechs) {
		major_status = FUNC8(minor_status,
		    actual_mechs);
		if (major_status)
			return (major_status);
	}

	cred = FUNC11(sizeof(struct _gss_cred));
	if (!cred) {
		if (actual_mechs)
			FUNC9(minor_status, actual_mechs);
		*minor_status = ENOMEM;
		return (GSS_S_FAILURE);
	}
	FUNC1(&cred->gc_mc);

	set.count = 1;
	min_time = GSS_C_INDEFINITE;
	for (i = 0; i < mechs->count; i++) {
		m = FUNC3(&mechs->elements[i]);
		if (!m)
			continue;

		if (desired_name != GSS_C_NO_NAME) {
			major_status = FUNC4(minor_status, name,
						    &mechs->elements[i], &mn);
			if (major_status != GSS_S_COMPLETE)
				continue;
		}

		mc = FUNC11(sizeof(struct _gss_mechanism_cred));
		if (!mc) {
			continue;
		}
		mc->gmc_mech = m;
		mc->gmc_mech_oid = &m->gm_mech_oid;

		/*
		 * XXX Probably need to do something with actual_mechs.
		 */
		set.elements = &mechs->elements[i];
		major_status = m->gm_acquire_cred(minor_status,
		    (desired_name != GSS_C_NO_NAME
			? mn->gmn_name : GSS_C_NO_NAME),
		    time_req, &set, cred_usage,
		    &mc->gmc_cred, NULL, &cred_time);
		if (major_status) {
			FUNC6(mc);
			continue;
		}
		if (cred_time < min_time)
			min_time = cred_time;

		if (actual_mechs) {
			major_status = FUNC7(minor_status,
			    mc->gmc_mech_oid, actual_mechs);
			if (major_status) {
				m->gm_release_cred(minor_status,
				    &mc->gmc_cred);
				FUNC6(mc);
				continue;
			}
		}

		FUNC2(&cred->gc_mc, mc, gmc_link);
	}

	/*
	 * If we didn't manage to create a single credential, return
	 * an error.
	 */
	if (!FUNC0(&cred->gc_mc)) {
		FUNC6(cred);
		if (actual_mechs)
			FUNC9(minor_status, actual_mechs);
		*minor_status = 0;
		return (GSS_S_NO_CRED);
	}

	if (time_rec)
		*time_rec = min_time;
	*output_cred_handle = (gss_cred_id_t) cred;
	*minor_status = 0;
	return (GSS_S_COMPLETE);
}