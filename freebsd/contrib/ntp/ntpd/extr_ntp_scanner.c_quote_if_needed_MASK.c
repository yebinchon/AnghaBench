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
 int /*<<< orphan*/  FUNC1 (char*,size_t,char*,char*) ; 
 int /*<<< orphan*/  special_chars ; 
 int /*<<< orphan*/ * FUNC2 (char*,char) ; 
 size_t FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,size_t) ; 
 size_t FUNC5 (char*) ; 

char *
FUNC6(char *str)
{
	char *ret;
	size_t len;
	size_t octets;

	len = FUNC5(str);
	octets = len + 2 + 1;
	ret = FUNC0(octets);
	if ('"' != str[0] 
	    && (FUNC3(str, special_chars) < len 
		|| FUNC2(str, ' ') != NULL)) {
		FUNC1(ret, octets, "\"%s\"", str);
	} else
		FUNC4(ret, str, octets);

	return ret;
}