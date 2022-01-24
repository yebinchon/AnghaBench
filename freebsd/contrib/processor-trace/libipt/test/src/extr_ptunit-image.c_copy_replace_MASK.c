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
struct image_fixture {int /*<<< orphan*/ * asid; int /*<<< orphan*/  copy; int /*<<< orphan*/  image; TYPE_2__* section; TYPE_1__* mapping; } ;
struct TYPE_4__ {int size; } ;
struct TYPE_3__ {int size; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int*,int*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 struct ptunit_result FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static struct ptunit_result FUNC6(struct image_fixture *ifix)
{
	uint8_t buffer[] = { 0xcc, 0xcc, 0xcc };
	int status, isid;

	ifix->section[0].size = 0x8;
	ifix->mapping[0].size = 0x8;

	status = FUNC0(&ifix->copy, &ifix->section[0], &ifix->asid[0],
			      0x1004ull, 1);
	FUNC3(status, 0);

	status = FUNC0(&ifix->image, &ifix->section[1], &ifix->asid[0],
			      0x1000ull, 2);
	FUNC3(status, 0);

	status = FUNC1(&ifix->copy, &ifix->image);
	FUNC3(status, 0);

	isid = -1;
	status = FUNC2(&ifix->copy, &isid, buffer, 2, &ifix->asid[0],
			       0x1003ull);
	FUNC3(status, 2);
	FUNC3(isid, 2);
	FUNC5(buffer[0], 0x03);
	FUNC5(buffer[1], 0x04);
	FUNC5(buffer[2], 0xcc);

	return FUNC4();
}