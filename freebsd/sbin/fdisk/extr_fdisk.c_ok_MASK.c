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
 int /*<<< orphan*/  LBUF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__* lbuf ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,char*) ; 
 int FUNC5 (scalar_t__*) ; 

__attribute__((used)) static int
FUNC6(const char *str)
{
	FUNC3("%s [n] ", str);
	FUNC1(stdout);
	if (FUNC2(lbuf, LBUF, stdin) == NULL)
		FUNC0(1);
	lbuf[FUNC5(lbuf)-1] = 0;

	if (*lbuf &&
		(!FUNC4(lbuf, "yes") || !FUNC4(lbuf, "YES") ||
		 !FUNC4(lbuf, "y") || !FUNC4(lbuf, "Y")))
		return 1;
	else
		return 0;
}