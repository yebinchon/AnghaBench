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
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PKT_ALIAS_PUNCH_FW ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  mla ; 
 int FUNC4 (char const*,char*,unsigned int*,unsigned int*) ; 

__attribute__((used)) static void
FUNC5(const char *strValue)
{
	unsigned int base, num;

	if (FUNC4(strValue, "%u:%u", &base, &num) != 2)
		FUNC3(1, "punch_fw: basenumber:count parameter required");

	if (FUNC0(base + num - 1) == -1)
		FUNC3(1, "punch_fw: basenumber:count parameter should fit "
			"the maximum allowed rule numbers");

	FUNC1(mla, base, num);
	(void)FUNC2(mla, PKT_ALIAS_PUNCH_FW, PKT_ALIAS_PUNCH_FW);
}