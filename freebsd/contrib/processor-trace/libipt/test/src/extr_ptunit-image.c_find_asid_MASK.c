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
struct pt_mapped_section {int /*<<< orphan*/  section; int /*<<< orphan*/  vaddr; } ;
struct image_fixture {int /*<<< orphan*/ * section; int /*<<< orphan*/ * asid; int /*<<< orphan*/  image; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct pt_mapped_section*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 struct ptunit_result FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct ptunit_result FUNC7(struct image_fixture *ifix)
{
	struct pt_mapped_section msec;
	int status;

	status = FUNC0(&ifix->image, &ifix->section[0], &ifix->asid[0],
			      0x1000ull, 1);
	FUNC3(status, 0);

	status = FUNC0(&ifix->image, &ifix->section[0], &ifix->asid[1],
			      0x1008ull, 2);
	FUNC3(status, 0);

	status = FUNC1(&ifix->image, &msec, &ifix->asid[0], 0x1009ull);
	FUNC3(status, 1);
	FUNC5(msec.section, &ifix->section[0]);
	FUNC6(msec.vaddr, 0x1000ull);

	status = FUNC2(msec.section);
	FUNC3(status, 0);

	status = FUNC1(&ifix->image, &msec, &ifix->asid[1], 0x1009ull);
	FUNC3(status, 2);
	FUNC5(msec.section, &ifix->section[0]);
	FUNC6(msec.vaddr, 0x1008ull);

	status = FUNC2(msec.section);
	FUNC3(status, 0);

	return FUNC4();
}