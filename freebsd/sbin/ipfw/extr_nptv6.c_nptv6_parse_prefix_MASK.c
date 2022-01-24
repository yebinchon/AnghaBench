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
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  EX_USAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,struct in6_addr*) ; 
 char* FUNC4 (char*,char) ; 
 char* FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char*,char**,int) ; 

__attribute__((used)) static void
FUNC7(const char *arg, struct in6_addr *prefix, int *len)
{
	char *p, *l;

	p = FUNC5(arg);
	if (p == NULL)
		FUNC0(EX_OSERR, NULL);
	if ((l = FUNC4(p, '/')) != NULL)
		*l++ = '\0';
	if (FUNC3(AF_INET6, p, prefix) != 1)
		FUNC1(EX_USAGE, "Bad prefix: %s", p);
	if (l != NULL) {
		*len = (int)FUNC6(l, &l, 10);
		if (*l != '\0' || *len <= 0 || *len > 64)
			FUNC1(EX_USAGE, "Bad prefix length: %s", arg);
	} else
		*len = 0;
	FUNC2(p);
}