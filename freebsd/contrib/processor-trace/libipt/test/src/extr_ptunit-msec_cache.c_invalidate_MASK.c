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
struct TYPE_3__ {int /*<<< orphan*/  ucount; int /*<<< orphan*/  mcount; } ;
struct TYPE_4__ {int /*<<< orphan*/  msec; } ;
struct test_fixture {TYPE_1__ section; TYPE_2__ mcache; } ;
struct ptunit_result {int dummy; } ;
struct pt_section {int dummy; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 struct pt_section* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pt_section*) ; 
 struct ptunit_result FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ptunit_result FUNC6(struct test_fixture *tfix)
{
	struct pt_section *section;
	int status;

	status = FUNC0(&tfix->mcache);
	FUNC2(status, 0);

	section = FUNC1(&tfix->mcache.msec);
	FUNC3(section);

	FUNC5(tfix->section.mcount, 0);
	FUNC5(tfix->section.ucount, 0);

	return FUNC4();
}