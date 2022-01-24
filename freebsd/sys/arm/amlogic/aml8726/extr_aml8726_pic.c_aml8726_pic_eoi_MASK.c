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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (uintptr_t) ; 
 uintptr_t AML_PIC_NIRQS ; 
 int /*<<< orphan*/  FUNC1 (uintptr_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aml8726_pic_sc ; 
 int /*<<< orphan*/  FUNC4 (uintptr_t) ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
	uintptr_t nb = (uintptr_t) arg;

	if (nb >= AML_PIC_NIRQS)
		return;

	FUNC4(nb);

	FUNC3(aml8726_pic_sc, FUNC1(nb), FUNC0(nb));

	FUNC2(aml8726_pic_sc, FUNC1(nb));
}