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
struct image_fixture {int /*<<< orphan*/ * asid; int /*<<< orphan*/  image; TYPE_1__* status; TYPE_2__* section; } ;
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_4__ {char* filename; } ;
struct TYPE_3__ {int /*<<< orphan*/  deleted; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int*,int*,int,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int pte_nomap ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static struct ptunit_result FUNC7(struct image_fixture *ifix)
{
	uint8_t buffer[] = { 0xcc, 0xcc, 0xcc };
	int status, isid;

	ifix->section[0].filename = "same-name";
	ifix->section[1].filename = "same-name";

	status = FUNC0(&ifix->image, &ifix->section[0], &ifix->asid[0],
			      0x1000ull, 1);
	FUNC3(status, 0);

	status = FUNC0(&ifix->image, &ifix->section[1], &ifix->asid[0],
			      0x2000ull, 2);
	FUNC3(status, 0);

	isid = -1;
	status = FUNC1(&ifix->image, &isid, buffer, 2, &ifix->asid[0],
			       0x1001ull);
	FUNC3(status, 2);
	FUNC3(isid, 1);
	FUNC6(buffer[0], 0x01);
	FUNC6(buffer[1], 0x02);
	FUNC6(buffer[2], 0xcc);

	status = FUNC2(&ifix->image, "same-name",
					     &ifix->asid[0]);
	FUNC3(status, 2);

	FUNC4(ifix->status[0].deleted, 0);
	FUNC4(ifix->status[1].deleted, 0);

	isid = -1;
	status = FUNC1(&ifix->image, &isid, buffer, sizeof(buffer),
			       &ifix->asid[0], 0x1003ull);
	FUNC3(status, -pte_nomap);
	FUNC3(isid, -1);
	FUNC6(buffer[0], 0x01);
	FUNC6(buffer[1], 0x02);
	FUNC6(buffer[2], 0xcc);

	isid = -1;
	status = FUNC1(&ifix->image, &isid, buffer, sizeof(buffer),
			       &ifix->asid[0], 0x2003ull);
	FUNC3(status, -pte_nomap);
	FUNC3(isid, -1);
	FUNC6(buffer[0], 0x01);
	FUNC6(buffer[1], 0x02);
	FUNC6(buffer[2], 0xcc);

	return FUNC5();
}