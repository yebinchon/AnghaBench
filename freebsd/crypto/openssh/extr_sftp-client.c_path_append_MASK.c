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
 int /*<<< orphan*/  FUNC0 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 int FUNC2 (char const*) ; 
 char* FUNC3 (size_t) ; 

char *
FUNC4(const char *p1, const char *p2)
{
	char *ret;
	size_t len = FUNC2(p1) + FUNC2(p2) + 2;

	ret = FUNC3(len);
	FUNC1(ret, p1, len);
	if (p1[0] != '\0' && p1[FUNC2(p1) - 1] != '/')
		FUNC0(ret, "/", len);
	FUNC0(ret, p2, len);

	return(ret);
}