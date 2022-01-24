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
typedef  int /*<<< orphan*/  u_char ;
typedef  scalar_t__ ssize_t ;
typedef  TYPE_1__* gss_OID ;
struct TYPE_3__ {scalar_t__ length; int /*<<< orphan*/  elements; } ;
typedef  int /*<<< orphan*/  OM_uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  GSS_S_BAD_MECH ; 
 int /*<<< orphan*/  GSS_S_COMPLETE ; 
 int /*<<< orphan*/  GSS_S_DEFECTIVE_TOKEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/  const**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*) ; 

OM_uint32
FUNC3(u_char **str,
			   size_t total_len,
			   gss_OID mech)
{
    const u_char *p;
    ssize_t mech_len;

    mech_len = FUNC0 (*str, total_len, &p);
    if (mech_len < 0)
	return GSS_S_DEFECTIVE_TOKEN;

    if (mech_len != mech->length)
	return GSS_S_BAD_MECH;
    if (FUNC1(p,
		  mech->elements,
		  mech->length) != 0)
	return GSS_S_BAD_MECH;
    p += mech_len;
    *str = FUNC2(p);
    return GSS_S_COMPLETE;
}