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
 scalar_t__ FUNC0 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,char const*) ; 

int
FUNC4(const char *str1, const char* str2, const char* str3)
{

	if (FUNC2(str1, str2, FUNC1(str2)) != 0)
		return 1;

	if (FUNC0(str1, str3) != 0)
		FUNC3("DEPRECATED: '%s' matched '%s'",
		    str1, str3);
	return 0;
}