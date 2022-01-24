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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (uintptr_t) ; 
 int /*<<< orphan*/  FUNC1 (uintptr_t) ; 
 uintptr_t AML_PIC_NIRQS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aml8726_pic_sc ; 
 int /*<<< orphan*/  FUNC5 (uintptr_t) ; 

void
FUNC6(uintptr_t nb)
{
	uint32_t mask;

	if (nb >= AML_PIC_NIRQS)
		return;

	FUNC5(nb);

	mask = FUNC3(aml8726_pic_sc, FUNC1(nb));
	mask |= FUNC0(nb);
	FUNC4(aml8726_pic_sc, FUNC1(nb), mask);

	FUNC2(aml8726_pic_sc, FUNC1(nb));
}