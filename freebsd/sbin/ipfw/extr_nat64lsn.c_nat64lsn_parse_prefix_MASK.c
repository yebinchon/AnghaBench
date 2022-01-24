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
typedef  scalar_t__ uint16_t ;

/* Variables and functions */
 int AF_INET ; 
 int AF_INET6 ; 
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  EX_USAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int,char*,void*) ; 
 int /*<<< orphan*/  FUNC4 (int,void*,scalar_t__) ; 
 char* FUNC5 (char*,char) ; 
 char* FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (char*,char**,int) ; 

__attribute__((used)) static void
FUNC8(const char *arg, int af, void *prefix, uint16_t *plen)
{
	char *p, *l;

	p = FUNC6(arg);
	if (p == NULL)
		FUNC0(EX_OSERR, NULL);
	if ((l = FUNC5(p, '/')) != NULL)
		*l++ = '\0';
	if (l == NULL)
		FUNC1(EX_USAGE, "Prefix length required");
	if (FUNC3(af, p, prefix) != 1)
		FUNC1(EX_USAGE, "Bad prefix: %s", p);
	*plen = (uint16_t)FUNC7(l, &l, 10);
	if (*l != '\0' || *plen == 0 || (af == AF_INET && *plen > 32) ||
	    (af == AF_INET6 && *plen > 96))
		FUNC1(EX_USAGE, "Bad prefix length: %s", arg);
	FUNC4(af, prefix, *plen);
	FUNC2(p);
}