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
struct pt_asid {int cr3; int vmcs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pt_asid*) ; 
 int FUNC1 (struct pt_asid*,struct pt_asid*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 struct ptunit_result FUNC3 () ; 

__attribute__((used)) static struct ptunit_result FUNC4(void)
{
	struct pt_asid lhs, rhs;
	int errcode;

	FUNC0(&lhs);
	FUNC0(&rhs);

	errcode = FUNC1(&lhs, &rhs);
	FUNC2(errcode, 1);

	lhs.cr3 = 0x2300ull;
	rhs.vmcs = 0x42000ull;

	errcode = FUNC1(&lhs, &rhs);
	FUNC2(errcode, 1);

	errcode = FUNC1(&rhs, &lhs);
	FUNC2(errcode, 1);

	return FUNC3();
}