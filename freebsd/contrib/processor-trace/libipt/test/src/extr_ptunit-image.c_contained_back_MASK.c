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
struct TYPE_4__ {int size; } ;
struct TYPE_3__ {int size; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int*,int*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 struct ptunit_result FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static struct ptunit_result FUNC5(struct image_fixture *ifix)
{
	uint8_t buffer[] = { 0xcc, 0xcc };
	int status, isid;

	ifix->section[0].size = 0x8;
	ifix->mapping[0].size = 0x8;
	status = FUNC0(&ifix->image, &ifix->section[0], &ifix->asid[0],
			      0x1004ull, 1);
	FUNC2(status, 0);

	status = FUNC0(&ifix->image, &ifix->section[0], &ifix->asid[0],
			      0x100cull, 2);
	FUNC2(status, 0);

	status = FUNC0(&ifix->image, &ifix->section[1], &ifix->asid[0],
			      0x1000ull, 3);
	FUNC2(status, 0);

	isid = -1;
	status = FUNC1(&ifix->image, &isid, buffer, 1, &ifix->asid[0],
			       0x1004ull);
	FUNC2(status, 1);
	FUNC2(isid, 3);
	FUNC4(buffer[0], 0x04);
	FUNC4(buffer[1], 0xcc);

	isid = -1;
	status = FUNC1(&ifix->image, &isid, buffer, 1, &ifix->asid[0],
			       0x100cull);
	FUNC2(status, 1);
	FUNC2(isid, 3);
	FUNC4(buffer[0], 0x0c);
	FUNC4(buffer[1], 0xcc);

	isid = -1;
	status = FUNC1(&ifix->image, &isid, buffer, 2, &ifix->asid[0],
			       0x100full);
	FUNC2(status, 1);
	FUNC2(isid, 3);
	FUNC4(buffer[0], 0x0f);
	FUNC4(buffer[1], 0xcc);

	isid = -1;
	status = FUNC1(&ifix->image, &isid, buffer, 1, &ifix->asid[0],
			       0x1010ull);
	FUNC2(status, 1);
	FUNC2(isid, 2);
	FUNC4(buffer[0], 0x04);
	FUNC4(buffer[1], 0xcc);

	return FUNC3();
}