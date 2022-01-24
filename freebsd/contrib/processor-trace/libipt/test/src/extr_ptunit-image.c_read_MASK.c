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
struct image_fixture {int /*<<< orphan*/ * asid; int /*<<< orphan*/  image; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int*,int*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 struct ptunit_result FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static struct ptunit_result FUNC4(struct image_fixture *ifix)
{
	uint8_t buffer[] = { 0xcc, 0xcc, 0xcc };
	int status, isid;

	isid = -1;
	status = FUNC0(&ifix->image, &isid, buffer, 2, &ifix->asid[1],
			       0x2003ull);
	FUNC1(status, 2);
	FUNC1(isid, 11);
	FUNC3(buffer[0], 0x03);
	FUNC3(buffer[1], 0x04);
	FUNC3(buffer[2], 0xcc);

	return FUNC2();
}