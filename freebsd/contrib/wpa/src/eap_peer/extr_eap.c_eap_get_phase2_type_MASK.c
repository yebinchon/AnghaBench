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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_TYPE_NONE ; 
 int EAP_VENDOR_IETF ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int*) ; 

u32 FUNC2(const char *name, int *vendor)
{
	int v;
	u32 type = FUNC1(name, &v);
	if (FUNC0(v, type)) {
		*vendor = v;
		return type;
	}
	*vendor = EAP_VENDOR_IETF;
	return EAP_TYPE_NONE;
}