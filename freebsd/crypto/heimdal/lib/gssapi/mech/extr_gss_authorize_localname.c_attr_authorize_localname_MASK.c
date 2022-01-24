#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ length; int /*<<< orphan*/  value; } ;
struct _gss_name {TYPE_1__ gn_value; int /*<<< orphan*/  gn_type; } ;
typedef  int /*<<< orphan*/  gss_name_t ;
struct TYPE_7__ {scalar_t__ length; int /*<<< orphan*/  value; } ;
typedef  TYPE_2__ gss_buffer_desc ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  GSS_C_ATTR_LOCAL_LOGIN_USER ; 
 int /*<<< orphan*/  GSS_C_NT_USER_NAME ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ GSS_S_BAD_NAMETYPE ; 
 scalar_t__ GSS_S_COMPLETE ; 
 scalar_t__ GSS_S_UNAUTHORIZED ; 
 scalar_t__ GSS_S_UNAVAILABLE ; 
 scalar_t__ FUNC1 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*,TYPE_2__*,TYPE_2__*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static OM_uint32
FUNC5(OM_uint32 *minor_status,
	                 const struct _gss_name *name,
	                 const struct _gss_name *user)
{
    OM_uint32 major_status = GSS_S_UNAVAILABLE;
    int more = -1;

    if (!FUNC2(&user->gn_type, GSS_C_NT_USER_NAME))
        return GSS_S_BAD_NAMETYPE;

    while (more != 0 && major_status != GSS_S_COMPLETE) {
	OM_uint32 tmpMajor, tmpMinor;
	gss_buffer_desc value;
	gss_buffer_desc display_value;
	int authenticated = 0, complete = 0;

	tmpMajor = FUNC1(minor_status,
					  (gss_name_t)name,
					  GSS_C_ATTR_LOCAL_LOGIN_USER,
					  &authenticated,
					  &complete,
					  &value,
					  &display_value,
					  &more);
	if (FUNC0(tmpMajor)) {
	    major_status = tmpMajor;
	    break;
	}

	/* If attribute is present, return an authoritative error code. */
	if (authenticated &&
	    value.length == user->gn_value.length &&
	    FUNC4(value.value, user->gn_value.value, user->gn_value.length) == 0)
	    major_status = GSS_S_COMPLETE;
	else
	    major_status = GSS_S_UNAUTHORIZED;

	FUNC3(&tmpMinor, &value);
	FUNC3(&tmpMinor, &display_value);
    }

    return major_status;
}