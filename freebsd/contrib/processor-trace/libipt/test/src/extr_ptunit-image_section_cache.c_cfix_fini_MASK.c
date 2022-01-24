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
struct TYPE_3__ {int nthreads; int* result; } ;
struct iscache_fixture {TYPE_2__** section; int /*<<< orphan*/  iscache; TYPE_1__ thrd; } ;
struct TYPE_4__ {int ucount; int acount; int mcount; int /*<<< orphan*/  iscache; } ;

/* Variables and functions */
 int num_sections ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  ptunit_thrd_fini ; 

__attribute__((used)) static struct ptunit_result FUNC6(struct iscache_fixture *cfix)
{
	int idx, errcode;

	FUNC5(ptunit_thrd_fini, &cfix->thrd);

	for (idx = 0; idx < cfix->thrd.nthreads; ++idx)
		FUNC2(cfix->thrd.result[idx], 0);

	FUNC0(&cfix->iscache);

	for (idx = 0; idx < num_sections; ++idx) {
		FUNC2(cfix->section[idx]->ucount, 1);
		FUNC2(cfix->section[idx]->acount, 0);
		FUNC2(cfix->section[idx]->mcount, 0);
		FUNC3(cfix->section[idx]->iscache);

		errcode = FUNC1(cfix->section[idx]);
		FUNC2(errcode, 0);
	}

	return FUNC4();
}