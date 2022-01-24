#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ptunit_result {int dummy; } ;
struct image_fixture {TYPE_1__* status; TYPE_2__* section; int /*<<< orphan*/  copy; } ;
struct TYPE_4__ {int /*<<< orphan*/  mcount; int /*<<< orphan*/  ucount; } ;
struct TYPE_3__ {int /*<<< orphan*/  bad_put; int /*<<< orphan*/  deleted; } ;

/* Variables and functions */
 int /*<<< orphan*/  dfix_fini ; 
 int ifix_nsecs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct image_fixture*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 struct ptunit_result FUNC4 () ; 

__attribute__((used)) static struct ptunit_result FUNC5(struct image_fixture *ifix)
{
	int sec;

	FUNC1(dfix_fini, ifix);

	FUNC0(&ifix->copy);

	for (sec = 0; sec < ifix_nsecs; ++sec) {
		FUNC2(ifix->section[sec].ucount, 0);
		FUNC2(ifix->section[sec].mcount, 0);
		FUNC3(ifix->status[sec].deleted, 1);
		FUNC2(ifix->status[sec].bad_put, 0);
	}

	return FUNC4();
}