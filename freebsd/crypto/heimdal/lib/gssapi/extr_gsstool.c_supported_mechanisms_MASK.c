#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * rtbl_t ;
struct TYPE_10__ {scalar_t__ value; scalar_t__ length; } ;
typedef  TYPE_1__ gss_buffer_desc ;
typedef  TYPE_2__* gss_OID_set ;
struct TYPE_11__ {size_t count; int /*<<< orphan*/ * elements; } ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  COL_DESC ; 
 int /*<<< orphan*/  COL_NAME ; 
 int /*<<< orphan*/  COL_OID ; 
 int /*<<< orphan*/  COL_SASL ; 
 scalar_t__ GSS_S_COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (scalar_t__*,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC3 (scalar_t__*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,char*) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  stdout ; 

int
FUNC13(void *argptr, int argc, char **argv)
{
    OM_uint32 maj_stat, min_stat;
    gss_OID_set mechs;
    rtbl_t ct;
    size_t i;

    maj_stat = FUNC1(&min_stat, &mechs);
    if (maj_stat != GSS_S_COMPLETE)
	FUNC0(1, "gss_indicate_mechs failed");

    FUNC6("Supported mechanisms:\n");

    ct = FUNC9();
    if (ct == NULL)
	FUNC0(1, "rtbl_create");

    FUNC12(ct, "  ");
    FUNC7(ct, COL_OID, 0);
    FUNC7(ct, COL_NAME, 0);
    FUNC7(ct, COL_DESC, 0);
    FUNC7(ct, COL_SASL, 0);

    for (i = 0; i < mechs->count; i++) {
	gss_buffer_desc str, sasl_name, mech_name, mech_desc;

	maj_stat = FUNC3(&min_stat, &mechs->elements[i], &str);
	if (maj_stat != GSS_S_COMPLETE)
	    FUNC0(1, "gss_oid_to_str failed");

	FUNC8(ct, COL_OID, "%.*s",
			       (int)str.length, (char *)str.value);
	FUNC4(&min_stat, &str);

	(void)FUNC2(&min_stat,
					    &mechs->elements[i],
					    &sasl_name,
					    &mech_name,
					    &mech_desc);

	FUNC8(ct, COL_NAME, "%.*s",
			       (int)mech_name.length, (char *)mech_name.value);
	FUNC8(ct, COL_DESC, "%.*s",
			       (int)mech_desc.length, (char *)mech_desc.value);
	FUNC8(ct, COL_SASL, "%.*s",
			       (int)sasl_name.length, (char *)sasl_name.value);

	FUNC4(&min_stat, &mech_name);
	FUNC4(&min_stat, &mech_desc);
	FUNC4(&min_stat, &sasl_name);

    }
    FUNC5(&min_stat, &mechs);

    FUNC11(ct, stdout);
    FUNC10(ct);

    return 0;
}