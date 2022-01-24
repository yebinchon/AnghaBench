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
 int /*<<< orphan*/  image_readmem_callback ; 
 int FUNC0 (int /*<<< orphan*/ *,int*,int*,int,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 struct ptunit_result FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static struct ptunit_result FUNC5(struct image_fixture *ifix)
{
	uint8_t memory[] = { 0xdd, 0x01, 0x02, 0xdd };
	uint8_t buffer[] = { 0xcc, 0xcc, 0xcc };
	int status, isid;

	status = FUNC1(&ifix->image, image_readmem_callback,
				       memory);
	FUNC2(status, 0);

	isid = -1;
	status = FUNC0(&ifix->image, &isid, buffer, 2, &ifix->asid[0],
			       0x3001ull);
	FUNC2(status, 2);
	FUNC2(isid, 0);
	FUNC4(buffer[0], 0x01);
	FUNC4(buffer[1], 0x02);
	FUNC4(buffer[2], 0xcc);

	return FUNC3();
}