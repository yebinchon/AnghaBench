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
 char* FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 unsigned int FUNC1 (char*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
bool FUNC2(unsigned *result, const char *parse_sep)
{
	char *val, *nextchar;

	val = FUNC0(NULL, parse_sep);
	if (!val)
		return false;
	*result = FUNC1(val, &nextchar, 0);
	return true;
}