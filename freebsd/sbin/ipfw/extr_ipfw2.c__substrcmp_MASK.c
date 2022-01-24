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
 scalar_t__ FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char const*) ; 

int
FUNC3(const char *str1, const char* str2)
{

	if (FUNC1(str1, str2, FUNC0(str1)) != 0)
		return 1;

	if (FUNC0(str1) != FUNC0(str2))
		FUNC2("DEPRECATED: '%s' matched '%s' as a sub-string",
		    str1, str2);
	return 0;
}