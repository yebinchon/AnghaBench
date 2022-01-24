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
 int FUNC0 (int /*<<< orphan*/ *,struct pt_mapped_section*,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 struct ptunit_result FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct ptunit_result FUNC6(struct image_fixture *ifix)
{
	struct pt_mapped_section msec;
	int status;

	status = FUNC0(&ifix->image, &msec, &ifix->asid[1], 0x2003ull);
	FUNC2(status, 11);
	FUNC4(msec.section, &ifix->section[1]);
	FUNC5(msec.vaddr, 0x2000ull);

	status = FUNC1(msec.section);
	FUNC2(status, 0);

	return FUNC3();
}