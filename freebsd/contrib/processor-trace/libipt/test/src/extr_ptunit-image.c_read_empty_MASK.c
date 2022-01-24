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
struct image_fixture {int /*<<< orphan*/  image; } ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pt_asid*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int*,int*,int,struct pt_asid*,int) ; 
 int pte_nomap ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 struct ptunit_result FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static struct ptunit_result FUNC5(struct image_fixture *ifix)
{
	struct pt_asid asid;
	uint8_t buffer[] = { 0xcc, 0xcc };
	int status, isid;

	FUNC0(&asid);

	isid = -1;
	status = FUNC1(&ifix->image, &isid, buffer, sizeof(buffer),
			       &asid, 0x1000ull);
	FUNC2(status, -pte_nomap);
	FUNC2(isid, -1);
	FUNC4(buffer[0], 0xcc);
	FUNC4(buffer[1], 0xcc);

	return FUNC3();
}