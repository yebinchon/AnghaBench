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
struct TYPE_2__ {int /*<<< orphan*/  msec; } ;
struct test_fixture {int /*<<< orphan*/  section; TYPE_1__ mcache; int /*<<< orphan*/  image; } ;
struct ptunit_result {int dummy; } ;
typedef  struct pt_section {int /*<<< orphan*/  ucount; int /*<<< orphan*/  mcount; } const pt_section ;
struct pt_mapped_section {int /*<<< orphan*/  ucount; int /*<<< orphan*/  mcount; } ;
struct pt_asid {int dummy; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,struct pt_section const**,int /*<<< orphan*/ *,struct pt_asid*,unsigned long long) ; 
 struct pt_section* FUNC1 (struct pt_section const*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct pt_section const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct ptunit_result FUNC6(struct test_fixture *tfix)
{
	const struct pt_mapped_section *msec;
	struct pt_section *section;
	struct pt_asid asid;
	int status;

	status = FUNC0(&tfix->mcache, &msec, &tfix->image, &asid,
				    0ull);
	FUNC2(status, 0);

	FUNC4(msec, &tfix->mcache.msec);

	section = FUNC1(msec);
	FUNC4(section, &tfix->section);

	FUNC5(section->mcount, 1);
	FUNC5(section->ucount, 1);

	return FUNC3();
}