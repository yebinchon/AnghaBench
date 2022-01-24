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
 int MATCH_BOTH ; 
 int MATCH_METHOD ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*,char const*,char const*) ; 
 int FUNC2 (char const*) ; 
 char* FUNC3 (char*) ; 

__attribute__((used)) static int
FUNC4(char **methods, const char *method, const char *submethod)
{
	char *omethods = *methods, *p;
	size_t l = FUNC2(method);
	int match;

	match = FUNC1(omethods, method, submethod);
	if (match != MATCH_METHOD && match != MATCH_BOTH)
		return 0;
	p = omethods + l;
	if (submethod && match == MATCH_BOTH)
		p += 1 + FUNC2(submethod); /* include colon */
	if (*p == ',')
		p++;
	*methods = FUNC3(p);
	FUNC0(omethods);
	return 1;
}