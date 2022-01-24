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
typedef  int /*<<< orphan*/  sysevent_t ;
typedef  int /*<<< orphan*/  sysevent_id_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DDI_SLEEP ; 
 int /*<<< orphan*/  SE_SLEEP ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(char *vendor, char *class, char *subclass,
    nvlist_t *attr_list, sysevent_id_t *eidp, int flag)
{
	sysevent_t *ev;
	int ret;

	FUNC0(vendor != NULL);
	FUNC0(class != NULL);
	FUNC0(subclass != NULL);
	FUNC0(attr_list != NULL);
	FUNC0(eidp != NULL);
	FUNC0(flag == DDI_SLEEP);

	ev = FUNC2(class, subclass, vendor, SE_SLEEP);
	FUNC0(ev != NULL);
	(void)FUNC3(ev, attr_list);
        ret = FUNC1(ev, SE_SLEEP, eidp);
	FUNC4(ev);
	FUNC5(ev);

	return (ret);
}