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
struct ptunit_result {int dummy; } ;
struct pt_section {int dummy; } ;
struct iscache_fixture {struct pt_section** section; int /*<<< orphan*/  thrd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pt_section**,int /*<<< orphan*/ ,int) ; 
 int num_sections ; 
 int FUNC1 (struct pt_section**,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct pt_section*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ptunit_thrd_init ; 

__attribute__((used)) static struct ptunit_result FUNC6(struct iscache_fixture *cfix)
{
	int idx;

	FUNC5(ptunit_thrd_init, &cfix->thrd);

	FUNC0(cfix->section, 0, sizeof(cfix->section));

	for (idx = 0; idx < num_sections; ++idx) {
		struct pt_section *section;
		int errcode;

		errcode = FUNC1(&section, "some-filename",
					idx % 3 == 0 ? 0x1000 : 0x2000,
					idx % 2 == 0 ? 0x1000 : 0x2000);
		FUNC2(errcode, 0);
		FUNC4(section);

		cfix->section[idx] = section;
	}

	return FUNC3();
}