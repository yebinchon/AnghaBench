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
struct attrs_for_mech_options {char* mech_string; scalar_t__ all_flag; } ;
typedef  int /*<<< orphan*/ * gss_OID_set ;
typedef  int /*<<< orphan*/ * gss_OID ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 int /*<<< orphan*/ * GSS_C_NO_OID ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 scalar_t__ FUNC1 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC5(struct attrs_for_mech_options *opt, int argc, char **argv)
{
    gss_OID_set mech_attr = NULL, known_mech_attrs = NULL;
    gss_OID mech = GSS_C_NO_OID;
    OM_uint32 major, minor;

    if (opt->mech_string) {
	mech = FUNC2(opt->mech_string);
	if (mech == NULL)
	    FUNC0(1, "mech %s is unknown", opt->mech_string);
    }

    major = FUNC1(&minor, mech, &mech_attr, &known_mech_attrs);
    if (major)
	FUNC0(1, "gss_inquire_attrs_for_mech");

    if (mech) {
	FUNC4(opt->mech_string, mech, mech_attr);
    }

    if (opt->all_flag) {
	FUNC4("all mechs", NULL, known_mech_attrs);
    }

    FUNC3(&minor, &mech_attr);
    FUNC3(&minor, &known_mech_attrs);

    return 0;
}