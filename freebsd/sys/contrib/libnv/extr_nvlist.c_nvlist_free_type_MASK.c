#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nvpair_t ;
struct TYPE_6__ {scalar_t__ nvl_error; } ;
typedef  TYPE_1__ nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int NV_TYPE_FIRST ; 
 int NV_TYPE_LAST ; 
 int NV_TYPE_NONE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,char const*) ; 

void
FUNC5(nvlist_t *nvl, const char *name, int type)
{
	nvpair_t *nvp;

	FUNC0(nvl);
	FUNC1(nvl->nvl_error == 0);
	FUNC1(type == NV_TYPE_NONE ||
	    (type >= NV_TYPE_FIRST && type <= NV_TYPE_LAST));

	nvp = FUNC2(nvl, type, name);
	if (nvp != NULL)
		FUNC3(nvl, nvp);
	else
		FUNC4(type, name);
}