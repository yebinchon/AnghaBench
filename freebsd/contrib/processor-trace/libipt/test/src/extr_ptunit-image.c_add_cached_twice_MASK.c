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
struct image_fixture {int /*<<< orphan*/ * asid; int /*<<< orphan*/  image; int /*<<< orphan*/  iscache; int /*<<< orphan*/ * section; } ;

/* Variables and functions */
 int FUNC0 (struct image_fixture*,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int*,int*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static struct ptunit_result FUNC7(struct image_fixture *ifix)
{
	uint8_t buffer[] = { 0xcc, 0xcc, 0xcc };
	int status, isid, risid;

	isid = FUNC0(ifix, &ifix->section[0], 0x1000ull);
	FUNC4(isid, 0);

	status = FUNC1(&ifix->image, &ifix->iscache, isid,
				      &ifix->asid[0]);
	FUNC3(status, 0);

	status = FUNC1(&ifix->image, &ifix->iscache, isid,
				      &ifix->asid[0]);
	FUNC3(status, 0);

	risid = -1;
	status = FUNC2(&ifix->image, &risid, buffer, 2, &ifix->asid[0],
			       0x1003ull);
	FUNC3(status, 2);
	FUNC3(risid, isid);
	FUNC6(buffer[0], 0x03);
	FUNC6(buffer[1], 0x04);
	FUNC6(buffer[2], 0xcc);

	return FUNC5();
}