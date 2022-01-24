#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* gss_OID_set ;
struct TYPE_7__ {size_t count; int /*<<< orphan*/ * elements; } ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  GSS_SPNEGO_MECHANISM ; 
 scalar_t__ GSS_S_COMPLETE ; 
 scalar_t__ FUNC0 (scalar_t__*,int /*<<< orphan*/ *,TYPE_1__**) ; 
 scalar_t__ FUNC1 (scalar_t__*,TYPE_1__**) ; 
 scalar_t__ FUNC2 (scalar_t__*,TYPE_1__**) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,TYPE_1__**) ; 

__attribute__((used)) static OM_uint32
FUNC5(OM_uint32 *minor_status, gss_OID_set *mechs)
{
    OM_uint32 ret, junk;
    gss_OID_set m;
    size_t i;

    ret = FUNC2(minor_status, &m);
    if (ret != GSS_S_COMPLETE)
	return ret;

    ret = FUNC1(minor_status, mechs);
    if (ret != GSS_S_COMPLETE) {
	FUNC4(&junk, &m);
	return ret;
    }

    for (i = 0; i < m->count; i++) {
	if (FUNC3(&m->elements[i], GSS_SPNEGO_MECHANISM))
	    continue;

	ret = FUNC0(minor_status, &m->elements[i], mechs);
	if (ret) {
	    FUNC4(&junk, &m);
	    FUNC4(&junk, mechs);
	    return ret;
	}
    }
    FUNC4(&junk, &m);
    return ret;
}