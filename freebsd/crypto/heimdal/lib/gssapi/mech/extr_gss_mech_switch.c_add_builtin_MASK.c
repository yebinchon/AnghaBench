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
struct TYPE_3__ {int /*<<< orphan*/  gm_mech_oid; int /*<<< orphan*/  (* gm_inquire_names_for_mech ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ;} ;
struct _gss_mech_switch {int /*<<< orphan*/ * gm_name_types; TYPE_1__ gm_mech; int /*<<< orphan*/  gm_mech_oid; int /*<<< orphan*/ * gm_so; } ;
typedef  TYPE_1__* gssapi_mech_interface ;
typedef  int /*<<< orphan*/  OM_uint32 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct _gss_mech_switch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _gss_mech_oids ; 
 int /*<<< orphan*/  _gss_mechs ; 
 struct _gss_mech_switch* FUNC1 (int,int) ; 
 int /*<<< orphan*/  gm_link ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int
FUNC5(gssapi_mech_interface mech)
{
    struct _gss_mech_switch *m;
    OM_uint32 minor_status;

    /* not registering any mech is ok */
    if (mech == NULL)
	return 0;

    m = FUNC1(1, sizeof(*m));
    if (m == NULL)
	return ENOMEM;
    m->gm_so = NULL;
    m->gm_mech = *mech;
    m->gm_mech_oid = mech->gm_mech_oid; /* XXX */
    FUNC2(&minor_status,
			   &m->gm_mech.gm_mech_oid, &_gss_mech_oids);

    /* pick up the oid sets of names */

    if (m->gm_mech.gm_inquire_names_for_mech)
	(*m->gm_mech.gm_inquire_names_for_mech)(&minor_status,
	    &m->gm_mech.gm_mech_oid, &m->gm_name_types);

    if (m->gm_name_types == NULL)
	FUNC3(&minor_status, &m->gm_name_types);

    FUNC0(&_gss_mechs, m, gm_link);
    return 0;
}