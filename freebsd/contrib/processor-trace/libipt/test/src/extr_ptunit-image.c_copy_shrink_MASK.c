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
	uint8_t buffer[] = { 0xcc, 0xcc, 0xcc };
	int status, isid;

	status = FUNC0(&ifix->copy, &ifix->section[1], &ifix->asid[1],
			      0x2000ull, 1);
	FUNC3(status, 0);

	status = FUNC1(&ifix->copy, &ifix->image);
	FUNC3(status, 0);

	isid = -1;
	status = FUNC2(&ifix->copy, &isid, buffer, 2, &ifix->asid[1],
			       0x2003ull);
	FUNC3(status, 2);
	FUNC3(isid, 11);
	FUNC5(buffer[0], 0x03);
	FUNC5(buffer[1], 0x04);
	FUNC5(buffer[2], 0xcc);

	return FUNC4();
}