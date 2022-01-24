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
 int HEXKEYBYTES ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 char* FUNC1 (char*,char) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC3(const char *netname, char *publickey)
{
	char lookup[3 * HEXKEYBYTES];
	char *p;

	if (publickey == NULL)
		return (0);
	if (!FUNC0(netname, lookup))
		return (0);
	p = FUNC1(lookup, ':');
	if (p == NULL) {
		return (0);
	}
	*p = '\0';
	(void) FUNC2(publickey, lookup, HEXKEYBYTES);
	publickey[HEXKEYBYTES] = '\0';
	return (1);
}