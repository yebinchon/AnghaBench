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
struct _gss_name {int /*<<< orphan*/  gn_mn; } ;
struct _gss_mechanism_name {int /*<<< orphan*/  gmn_name; int /*<<< orphan*/ * gmn_mech_oid; TYPE_1__* gmn_mech; } ;
typedef  TYPE_1__* gssapi_mech_interface ;
typedef  int /*<<< orphan*/  gss_name_t ;
struct TYPE_3__ {int /*<<< orphan*/  gm_mech_oid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct _gss_mechanism_name*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct _gss_name*) ; 
 int /*<<< orphan*/  gmn_link ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct _gss_name*,int /*<<< orphan*/ ,int) ; 

struct _gss_name *
FUNC5(gssapi_mech_interface m, gss_name_t new_mn)
{
	struct _gss_name *name;
	struct _gss_mechanism_name *mn;

	name = FUNC3(sizeof(struct _gss_name));
	if (!name)
		return (0);
	FUNC4(name, 0, sizeof(struct _gss_name));

	mn = FUNC3(sizeof(struct _gss_mechanism_name));
	if (!mn) {
		FUNC2(name);
		return (0);
	}

	FUNC0(&name->gn_mn);
	mn->gmn_mech = m;
	mn->gmn_mech_oid = &m->gm_mech_oid;
	mn->gmn_name = new_mn;
	FUNC1(&name->gn_mn, mn, gmn_link);

	return (name);
}