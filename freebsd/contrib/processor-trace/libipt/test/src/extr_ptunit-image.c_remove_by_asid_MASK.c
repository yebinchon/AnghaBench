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
struct image_fixture {int /*<<< orphan*/ * asid; int /*<<< orphan*/  image; TYPE_1__* status; } ;
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_2__ {int deleted; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int*,int*,int,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int pte_nomap ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static struct ptunit_result FUNC6(struct image_fixture *ifix)
{
	uint8_t buffer[] = { 0xcc, 0xcc, 0xcc };
	int status, isid;

	isid = -1;
	status = FUNC0(&ifix->image, &isid, buffer, 2, &ifix->asid[0],
			       0x1001ull);
	FUNC2(status, 2);
	FUNC2(isid, 10);
	FUNC5(buffer[0], 0x01);
	FUNC5(buffer[1], 0x02);
	FUNC5(buffer[2], 0xcc);

	status = FUNC1(&ifix->image, &ifix->asid[0]);
	FUNC2(status, 1);

	FUNC3(ifix->status[0].deleted, 0);
	FUNC2(ifix->status[1].deleted, 0);

	isid = -1;
	status = FUNC0(&ifix->image, &isid, buffer, sizeof(buffer),
			       &ifix->asid[0], 0x1003ull);
	FUNC2(status, -pte_nomap);
	FUNC2(isid, -1);
	FUNC5(buffer[0], 0x01);
	FUNC5(buffer[1], 0x02);
	FUNC5(buffer[2], 0xcc);

	isid = -1;
	status = FUNC0(&ifix->image, &isid, buffer, 2, &ifix->asid[1],
			       0x2003ull);
	FUNC2(status, 2);
	FUNC2(isid, 11);
	FUNC5(buffer[0], 0x03);
	FUNC5(buffer[1], 0x04);
	FUNC5(buffer[2], 0xcc);

	return FUNC4();
}