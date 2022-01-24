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
typedef  int /*<<< orphan*/  cap_channel_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYSCTL0_FILE ; 
 int /*<<< orphan*/  SYSCTL0_NAME ; 
 int /*<<< orphan*/  SYSCTL1_FILE ; 
 int /*<<< orphan*/  SYSCTL1_NAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static cap_channel_t *
FUNC5(void)
{
	cap_channel_t *capcas, *capsysctl;

	FUNC4(SYSCTL0_NAME, SYSCTL0_FILE);
	FUNC4(SYSCTL1_NAME, SYSCTL1_FILE);

	capcas = FUNC2();
	FUNC0(capcas != NULL);

	capsysctl = FUNC3(capcas, "system.sysctl");
	FUNC0(capsysctl != NULL);

	FUNC1(capcas);

	return (capsysctl);
}