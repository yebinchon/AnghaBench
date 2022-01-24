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
struct image_fixture {int /*<<< orphan*/ * asid; int /*<<< orphan*/  image; TYPE_1__* mapping; } ;
struct TYPE_2__ {int errcode; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int*,int*,int,int /*<<< orphan*/ *,int) ; 
 int pte_nosync ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 struct ptunit_result FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static struct ptunit_result FUNC4(struct image_fixture *ifix)
{
	uint8_t buffer[] = { 0xcc };
	int status, isid;

	ifix->mapping[0].errcode = -pte_nosync;

	isid = -1;
	status = FUNC0(&ifix->image, &isid, buffer, 1, &ifix->asid[0],
			       0x1000ull);
	FUNC1(status, -pte_nosync);
	FUNC1(isid, 10);
	FUNC3(buffer[0], 0xcc);

	return FUNC2();
}