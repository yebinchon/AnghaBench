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
struct image_fixture {TYPE_1__* asid; scalar_t__ nsecs; int /*<<< orphan*/  iscache; int /*<<< orphan*/ * section; int /*<<< orphan*/ * mapping; int /*<<< orphan*/ * status; int /*<<< orphan*/  copy; int /*<<< orphan*/  image; } ;
struct TYPE_2__ {int cr3; } ;

/* Variables and functions */
 int FUNC0 (struct image_fixture*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 struct ptunit_result FUNC5 () ; 

__attribute__((used)) static struct ptunit_result FUNC6(struct image_fixture *ifix)
{
	int index;

	FUNC3(&ifix->image, NULL);
	FUNC3(&ifix->copy, NULL);

	FUNC1(ifix->status, 0, sizeof(ifix->status));
	FUNC1(ifix->mapping, 0, sizeof(ifix->mapping));
	FUNC1(ifix->section, 0, sizeof(ifix->section));
	FUNC1(&ifix->iscache, 0, sizeof(ifix->iscache));

	ifix->nsecs = 0;

	index = FUNC0(ifix, "file-0");
	FUNC4(index, 0);

	index = FUNC0(ifix, "file-1");
	FUNC4(index, 1);

	index = FUNC0(ifix, "file-2");
	FUNC4(index, 2);

	FUNC2(&ifix->asid[0]);
	ifix->asid[0].cr3 = 0xa000;

	FUNC2(&ifix->asid[1]);
	ifix->asid[1].cr3 = 0xb000;

	FUNC2(&ifix->asid[2]);
	ifix->asid[2].cr3 = 0xc000;

	return FUNC5();
}