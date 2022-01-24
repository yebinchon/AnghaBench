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
 int /*<<< orphan*/  SYSCTL0_FILE ; 
 int /*<<< orphan*/  SYSCTL0_NAME ; 
 int /*<<< orphan*/  SYSCTL1_FILE ; 
 int /*<<< orphan*/  SYSCTL1_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(void)
{

	FUNC0(SYSCTL0_NAME, SYSCTL0_FILE);
	FUNC0(SYSCTL1_NAME, SYSCTL1_FILE);
}