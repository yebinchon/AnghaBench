#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_5__ {int /*<<< orphan*/  group_num; int /*<<< orphan*/  group; } ;
typedef  TYPE_1__ EAP_PWD_group ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 

EAP_PWD_group * FUNC5(u16 num)
{
	EAP_PWD_group *grp;

	if (!FUNC1(num, 1)) {
		FUNC4(MSG_INFO, "EAP-pwd: unsuitable group %u", num);
		return NULL;
	}
	grp = FUNC3(sizeof(EAP_PWD_group));
	if (!grp)
		return NULL;
	grp->group = FUNC0(num);
	if (!grp->group) {
		FUNC4(MSG_INFO, "EAP-pwd: unable to create EC group");
		FUNC2(grp);
		return NULL;
	}

	grp->group_num = num;
	FUNC4(MSG_INFO, "EAP-pwd: provisioned group %d", num);

	return grp;
}