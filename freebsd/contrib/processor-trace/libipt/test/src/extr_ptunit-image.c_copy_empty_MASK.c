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
struct pt_asid {int dummy; } ;
struct image_fixture {int /*<<< orphan*/  copy; int /*<<< orphan*/  image; } ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pt_asid*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int*,int*,int,struct pt_asid*,int) ; 
 int pte_nomap ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 struct ptunit_result FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static struct ptunit_result FUNC6(struct image_fixture *ifix)
{
	struct pt_asid asid;
	uint8_t buffer[] = { 0xcc, 0xcc };
	int status, isid;

	FUNC0(&asid);

	status = FUNC1(&ifix->copy, &ifix->image);
	FUNC3(status, 0);

	isid = -1;
	status = FUNC2(&ifix->copy, &isid, buffer, sizeof(buffer),
			       &asid, 0x1000ull);
	FUNC3(status, -pte_nomap);
	FUNC3(isid, -1);
	FUNC5(buffer[0], 0xcc);
	FUNC5(buffer[1], 0xcc);

	return FUNC4();
}