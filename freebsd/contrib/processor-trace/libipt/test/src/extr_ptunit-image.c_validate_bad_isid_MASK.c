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
struct pt_mapped_section {int /*<<< orphan*/  section; } ;
struct image_fixture {int /*<<< orphan*/  image; int /*<<< orphan*/ * asid; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct pt_mapped_section*,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct pt_mapped_section*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pte_nomap ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC5 () ; 

__attribute__((used)) static struct ptunit_result FUNC6(struct image_fixture *ifix)
{
	struct pt_mapped_section msec;
	int isid, status;

	isid = FUNC0(&ifix->image, &msec, &ifix->asid[0], 0x1003ull);
	FUNC4(isid, 0);

	status = FUNC2(msec.section);
	FUNC3(status, 0);

	status = FUNC1(&ifix->image, &msec, 0x1004ull, isid + 1);
	FUNC3(status, -pte_nomap);

	return FUNC5();
}