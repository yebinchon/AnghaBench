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
typedef  int /*<<< orphan*/  intmax_t ;

/* Variables and functions */
 int /*<<< orphan*/  EEXIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char**,int) ; 

__attribute__((used)) static intmax_t
FUNC2(int flag, const char *req, const char *str, int base)
{
	char *cp;
	intmax_t ret;

	ret = FUNC1(str, &cp, base);
	if (cp == str || *cp)
		FUNC0(EEXIT, "-%c flag requires a %s", flag, req);
	return (ret);
}