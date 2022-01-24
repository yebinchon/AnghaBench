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
typedef  int uint8_t ;
struct ptunit_result {int dummy; } ;
struct image_fixture {int /*<<< orphan*/ * asid; int /*<<< orphan*/  image; TYPE_1__* status; int /*<<< orphan*/ * section; } ;
struct TYPE_2__ {int deleted; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int*,int*,int,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int pte_bad_image ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 struct ptunit_result FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static struct ptunit_result FUNC5(struct image_fixture *ifix)
{
	uint8_t buffer[] = { 0xcc, 0xcc, 0xcc };
	int status, isid;

	isid = -1;
	status = FUNC0(&ifix->image, &isid, buffer, 2, &ifix->asid[0],
			       0x1001ull);
	FUNC2(status, 2);
	FUNC2(isid, 10);
	FUNC4(buffer[0], 0x01);
	FUNC4(buffer[1], 0x02);
	FUNC4(buffer[2], 0xcc);

	status = FUNC1(&ifix->image, &ifix->section[0],
				 &ifix->asid[0], 0x2000ull);
	FUNC2(status, -pte_bad_image);

	FUNC2(ifix->status[0].deleted, 0);
	FUNC2(ifix->status[1].deleted, 0);

	isid = -1;
	status = FUNC0(&ifix->image, &isid, buffer, 2, &ifix->asid[0],
			       0x1003ull);
	FUNC2(status, 2);
	FUNC2(isid, 10);
	FUNC4(buffer[0], 0x03);
	FUNC4(buffer[1], 0x04);
	FUNC4(buffer[2], 0xcc);

	isid = -1;
	status = FUNC0(&ifix->image, &isid, buffer, 2, &ifix->asid[1],
			       0x2005ull);
	FUNC2(status, 2);
	FUNC2(isid, 11);
	FUNC4(buffer[0], 0x05);
	FUNC4(buffer[1], 0x06);
	FUNC4(buffer[2], 0xcc);

	return FUNC3();
}