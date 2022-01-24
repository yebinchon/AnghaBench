#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * rtbl_t ;
typedef  scalar_t__ gss_const_OID ;
struct TYPE_8__ {scalar_t__ value; scalar_t__ length; } ;
typedef  TYPE_1__ gss_buffer_desc ;
typedef  TYPE_2__* gss_OID_set ;
struct TYPE_9__ {size_t count; int /*<<< orphan*/ * elements; } ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  COL_DESC ; 
 int /*<<< orphan*/  COL_OID ; 
 int /*<<< orphan*/  COL_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (scalar_t__*,int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC11(const char *mechname, gss_const_OID mech, gss_OID_set set)
{
    gss_buffer_desc name, desc;
    OM_uint32 major, minor;
    rtbl_t ct;
    size_t n;

    ct = FUNC7();
    if (ct == NULL)
	FUNC0(1, "rtbl_create");

    FUNC10(ct, "  ");
    FUNC5(ct, COL_OID, 0);
    FUNC5(ct, COL_DESC, 0);
    if (mech)
	FUNC5(ct, COL_VALUE, 0);

    for (n = 0; n < set->count; n++) {
	major = FUNC1(&minor, &set->elements[n], &name, &desc, NULL);
	if (major)
	    continue;

	FUNC6(ct, COL_OID, "%.*s",
			       (int)name.length, (char *)name.value);
	FUNC6(ct, COL_DESC, "%.*s",
			       (int)desc.length, (char *)desc.value);
	if (mech) {
	    gss_buffer_desc value;

	    if (FUNC2(mech, &set->elements[n], &value) != 0)
		value.length = 0;

	    if (value.length)
		FUNC6(ct, COL_VALUE, "%.*s",
				       (int)value.length, (char *)value.value);
	    else
		FUNC6(ct, COL_VALUE, "<>");
	    FUNC3(&minor, &value);
	}

	FUNC3(&minor, &name);
	FUNC3(&minor, &desc);
    }

    FUNC4("attributes for: %s\n", mechname);
    FUNC9(ct, stdout);
    FUNC8(ct);
}