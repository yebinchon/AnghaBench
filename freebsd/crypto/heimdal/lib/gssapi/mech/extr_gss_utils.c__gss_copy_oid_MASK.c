#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* gss_OID ;
struct TYPE_4__ {size_t length; int /*<<< orphan*/  elements; } ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 scalar_t__ GSS_S_COMPLETE ; 
 scalar_t__ GSS_S_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 

OM_uint32
FUNC2(OM_uint32 *minor_status,
    const gss_OID from_oid, gss_OID to_oid)
{
	size_t len = from_oid->length;

	*minor_status = 0;
	to_oid->elements = FUNC0(len);
	if (!to_oid->elements) {
		to_oid->length = 0;
		*minor_status = ENOMEM;
		return GSS_S_FAILURE;
	}
	to_oid->length = len;
	FUNC1(to_oid->elements, from_oid->elements, len);
	return (GSS_S_COMPLETE);
}