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
typedef  int uint8_t ;
struct ptunit_result {int dummy; } ;
struct image_fixture {int /*<<< orphan*/ * asid; int /*<<< orphan*/  copy; int /*<<< orphan*/  image; int /*<<< orphan*/ * section; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int*,int*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 struct ptunit_result FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static struct ptunit_result FUNC6(struct image_fixture *ifix)
{
	uint8_t buffer[] = { 0xcc, 0xcc };
	int status, isid;

	status = FUNC0(&ifix->copy, &ifix->section[0], &ifix->asid[0],
			      0x2000ull, 1);
	FUNC3(status, 0);

	status = FUNC0(&ifix->copy, &ifix->section[1], &ifix->asid[0],
			      0x2010ull, 2);
	FUNC3(status, 0);

	status = FUNC0(&ifix->image, &ifix->section[2], &ifix->asid[0],
			      0x2008ull, 3);
	FUNC3(status, 0);

	status = FUNC1(&ifix->copy, &ifix->image);
	FUNC3(status, 0);

	isid = -1;
	status = FUNC2(&ifix->copy, &isid, buffer, 1, &ifix->asid[0],
			       0x2003ull);
	FUNC3(status, 1);
	FUNC3(isid, 1);
	FUNC5(buffer[0], 0x03);
	FUNC5(buffer[1], 0xcc);

	isid = -1;
	status = FUNC2(&ifix->copy, &isid, buffer, 1, &ifix->asid[0],
			       0x200aull);
	FUNC3(status, 1);
	FUNC3(isid, 3);
	FUNC5(buffer[0], 0x02);
	FUNC5(buffer[1], 0xcc);

	isid = -1;
	status = FUNC2(&ifix->copy, &isid, buffer, 1, &ifix->asid[0],
			       0x2016ull);
	FUNC3(status, 1);
	FUNC3(isid, 3);
	FUNC5(buffer[0], 0x0e);
	FUNC5(buffer[1], 0xcc);

	isid = -1;
	status = FUNC2(&ifix->copy, &isid, buffer, 1, &ifix->asid[0],
			       0x2019ull);
	FUNC3(status, 1);
	FUNC3(isid, 2);
	FUNC5(buffer[0], 0x09);
	FUNC5(buffer[1], 0xcc);

	return FUNC4();
}