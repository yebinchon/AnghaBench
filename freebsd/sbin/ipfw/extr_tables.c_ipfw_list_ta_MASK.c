#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* algoname; int refcnt; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ ipfw_ta_info ;
struct TYPE_6__ {int count; scalar_t__ objsize; } ;
typedef  TYPE_2__ ipfw_obj_lheader ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,...) ; 
 int FUNC4 (TYPE_2__**) ; 
 int /*<<< orphan*/  tabletypes ; 

void
FUNC5(int ac, char *av[])
{
	ipfw_obj_lheader *olh;
	ipfw_ta_info *info;
	int error, i;
	const char *atype;

	error = FUNC4(&olh);
	if (error != 0)
		FUNC0(EX_OSERR, "Unable to request algorithm list");

	info = (ipfw_ta_info *)(olh + 1);
	for (i = 0; i < olh->count; i++) {
		if ((atype = FUNC2(tabletypes, info->type)) == NULL)
			atype = "unknown";
		FUNC3("--- %s ---\n", info->algoname);
		FUNC3(" type: %s\n refcount: %u\n", atype, info->refcnt);

		info = (ipfw_ta_info *)((caddr_t)info + olh->objsize);
	}

	FUNC1(olh);
}