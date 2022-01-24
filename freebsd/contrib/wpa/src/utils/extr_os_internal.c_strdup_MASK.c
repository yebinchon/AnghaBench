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
 char* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 size_t FUNC2 (char const*) ; 

char * FUNC3(const char *s)
{
	char *res;
	size_t len;
	if (s == NULL)
		return NULL;
	len = FUNC2(s);
	res = FUNC0(len + 1);
	if (res)
		FUNC1(res, s, len + 1);
	return res;
}