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
typedef  int /*<<< orphan*/  uint8_t ;
struct ptunit_result {int dummy; } ;
struct image_fixture {int /*<<< orphan*/  image; int /*<<< orphan*/ * asid; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  pte_internal ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC2 () ; 

__attribute__((used)) static struct ptunit_result FUNC3(struct image_fixture *ifix)
{
	uint8_t buffer;
	int status, isid;

	status = FUNC0(NULL, &isid, &buffer, 1, &ifix->asid[0],
			       0x1000ull);
	FUNC1(status, -pte_internal);

	status = FUNC0(&ifix->image, NULL, &buffer, 1, &ifix->asid[0],
			       0x1000ull);
	FUNC1(status, -pte_internal);

	status = FUNC0(&ifix->image, &isid, NULL, 1, &ifix->asid[0],
			       0x1000ull);
	FUNC1(status, -pte_internal);

	status = FUNC0(&ifix->image, &isid, &buffer, 1, NULL,
			       0x1000ull);
	FUNC1(status, -pte_internal);

	return FUNC2();
}