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
typedef  int uint8_t ;
struct ptunit_result {int dummy; } ;
struct image_fixture {int /*<<< orphan*/ * asid; int /*<<< orphan*/  image; TYPE_2__* section; TYPE_1__* mapping; } ;
struct TYPE_4__ {int size; scalar_t__ offset; int /*<<< orphan*/  filename; } ;
struct TYPE_3__ {int size; int* content; } ;

/* Variables and functions */
 int FUNC0 (struct image_fixture*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int*,int*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static struct ptunit_result FUNC7(struct image_fixture *ifix)
{
	uint8_t buffer[] = { 0xcc, 0xcc }, i;
	int status, isid, index;

	/* Add another section from a different part of the same file as an
	 * existing section.
	 */
	index = FUNC0(ifix, ifix->section[0].filename);
	FUNC4(index, 0);

	ifix->section[index].offset = ifix->section[0].offset + 0x10;
	FUNC6(ifix->section[index].size, ifix->section[0].size);

	/* Change the content of the new section so we can distinguish them. */
	for (i = 0; i < ifix->mapping[index].size; ++i)
		ifix->mapping[index].content[i] += 0x10;


	status = FUNC1(&ifix->image, &ifix->section[0], &ifix->asid[0],
			      0x1000ull, 0);
	FUNC3(status, 0);

	status = FUNC1(&ifix->image, &ifix->section[index],
			      &ifix->asid[0], 0x1000ull, 0);
	FUNC3(status, 0);

	isid = -1;
	status = FUNC2(&ifix->image, &isid, buffer, 1, &ifix->asid[0],
			       0x1000ull);
	FUNC3(status, 1);
	FUNC3(isid, 0);
	FUNC6(buffer[0], 0x10);
	FUNC6(buffer[1], 0xcc);

	isid = -1;
	status = FUNC2(&ifix->image, &isid, buffer, 1, &ifix->asid[0],
			       0x100full);
	FUNC3(status, 1);
	FUNC3(isid, 0);
	FUNC6(buffer[0], 0x1f);
	FUNC6(buffer[1], 0xcc);

	return FUNC5();
}