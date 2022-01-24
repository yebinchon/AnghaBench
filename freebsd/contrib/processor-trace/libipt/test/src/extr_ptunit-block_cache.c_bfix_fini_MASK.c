#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ptunit_result {int dummy; } ;
struct TYPE_2__ {int nthreads; int /*<<< orphan*/ * result; } ;
struct bcache_fixture {int /*<<< orphan*/  bcache; TYPE_1__ thrd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  ptunit_thrd_fini ; 

__attribute__((used)) static struct ptunit_result FUNC4(struct bcache_fixture *bfix)
{
	int thrd;

	FUNC3(ptunit_thrd_fini, &bfix->thrd);

	for (thrd = 0; thrd < bfix->thrd.nthreads; ++thrd)
		FUNC1(bfix->thrd.result[thrd], 0);

	FUNC0(bfix->bcache);

	return FUNC2();
}