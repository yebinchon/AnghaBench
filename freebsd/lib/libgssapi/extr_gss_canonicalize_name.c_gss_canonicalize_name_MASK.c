#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct _gss_name {int /*<<< orphan*/  gn_mn; } ;
struct _gss_mechanism_name {scalar_t__ gmn_name; int /*<<< orphan*/ * gmn_mech_oid; struct _gss_mech_switch* gmn_mech; } ;
struct _gss_mech_switch {int /*<<< orphan*/  gm_mech_oid; int /*<<< orphan*/  (* gm_release_name ) (scalar_t__*,scalar_t__*) ;scalar_t__ (* gm_canonicalize_name ) (scalar_t__*,scalar_t__,int /*<<< orphan*/  const,scalar_t__*) ;} ;
typedef  scalar_t__ gss_name_t ;
typedef  int /*<<< orphan*/  gss_OID ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 scalar_t__ GSS_S_COMPLETE ; 
 scalar_t__ GSS_S_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct _gss_mechanism_name*,int /*<<< orphan*/ ) ; 
 struct _gss_mech_switch* FUNC2 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC3 (scalar_t__*,struct _gss_name*,int /*<<< orphan*/  const,struct _gss_mechanism_name**) ; 
 int /*<<< orphan*/  FUNC4 (struct _gss_mech_switch*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct _gss_name*) ; 
 int /*<<< orphan*/  gmn_link ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct _gss_name*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (scalar_t__*,scalar_t__,int /*<<< orphan*/  const,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*,scalar_t__*) ; 

OM_uint32
FUNC11(OM_uint32 *minor_status,
    const gss_name_t input_name,
    const gss_OID mech_type,
    gss_name_t *output_name)
{
	OM_uint32 major_status;
	struct _gss_name *name = (struct _gss_name *) input_name;
	struct _gss_mechanism_name *mn;
	struct _gss_mech_switch *m = FUNC2(mech_type);
	gss_name_t new_canonical_name;

	*minor_status = 0;
	*output_name = 0;

	major_status = FUNC3(minor_status, name, mech_type, &mn);
	if (major_status)
		return (major_status);

	m = mn->gmn_mech;
	major_status = m->gm_canonicalize_name(minor_status,
	    mn->gmn_name, mech_type, &new_canonical_name);
	if (major_status) {
		FUNC4(m, major_status, *minor_status);
		return (major_status);
	}

	/*
	 * Now we make a new name and mark it as an MN.
	 */
	*minor_status = 0;
	name = FUNC6(sizeof(struct _gss_name));
	if (!name) {
		m->gm_release_name(minor_status, &new_canonical_name);
		*minor_status = ENOMEM;
		return (GSS_S_FAILURE);
	}
	FUNC7(name, 0, sizeof(struct _gss_name));

	mn = FUNC6(sizeof(struct _gss_mechanism_name));
	if (!mn) {
		m->gm_release_name(minor_status, &new_canonical_name);
		FUNC5(name);
		*minor_status = ENOMEM;
		return (GSS_S_FAILURE);
	}

	FUNC0(&name->gn_mn);
	mn->gmn_mech = m;
	mn->gmn_mech_oid = &m->gm_mech_oid;
	mn->gmn_name = new_canonical_name;
	FUNC1(&name->gn_mn, mn, gmn_link);

	*output_name = (gss_name_t) name;

	return (GSS_S_COMPLETE);
}