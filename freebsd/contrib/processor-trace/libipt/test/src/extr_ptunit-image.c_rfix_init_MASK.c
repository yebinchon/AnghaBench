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
struct ptunit_result {int dummy; } ;
struct image_fixture {int /*<<< orphan*/ * asid; int /*<<< orphan*/ * section; int /*<<< orphan*/  image; } ;

/* Variables and functions */
 int /*<<< orphan*/  ifix_init ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct image_fixture*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC3 () ; 

__attribute__((used)) static struct ptunit_result FUNC4(struct image_fixture *ifix)
{
	int status;

	FUNC1(ifix_init, ifix);

	status = FUNC0(&ifix->image, &ifix->section[0], &ifix->asid[0],
			      0x1000ull, 10);
	FUNC2(status, 0);

	status = FUNC0(&ifix->image, &ifix->section[1], &ifix->asid[1],
			      0x2000ull, 11);
	FUNC2(status, 0);

	return FUNC3();
}