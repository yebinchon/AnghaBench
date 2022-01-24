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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  u_long ;
struct _table_value {int spare1; scalar_t__ refcnt; } ;
typedef  int /*<<< orphan*/  ipfw_table_value ;
struct TYPE_4__ {int count; scalar_t__ objsize; } ;
typedef  TYPE_1__ ipfw_obj_lheader ;
typedef  scalar_t__ caddr_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  compare_values ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct _table_value*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

void
FUNC7(int ac, char *av[])
{
	ipfw_obj_lheader *olh;
	struct _table_value *v;
	int error, i;
	uint32_t vmask;
	char buf[128];

	error = FUNC4(&olh);
	if (error != 0)
		FUNC0(EX_OSERR, "Unable to request value list");

	vmask = 0x7FFFFFFF; /* Similar to IPFW_VTYPE_LEGACY */

	FUNC5(buf, sizeof(buf), vmask);
	FUNC2("HEADER: %s\n", buf);
	v = (struct _table_value *)(olh + 1);
	FUNC3(v, olh->count, olh->objsize, compare_values);
	for (i = 0; i < olh->count; i++) {
		FUNC6(buf, sizeof(buf), (ipfw_table_value *)v,
		    vmask, 0);
		FUNC2("[%u] refs=%lu %s\n", v->spare1, (u_long)v->refcnt, buf);
		v = (struct _table_value *)((caddr_t)v + olh->objsize);
	}

	FUNC1(olh);
}