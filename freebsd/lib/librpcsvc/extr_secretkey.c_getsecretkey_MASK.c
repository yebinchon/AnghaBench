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
 int /*<<< orphan*/  KEYCHECKSUMSIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*,char) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

int
FUNC5(char *netname, char *secretkey, char *passwd)
{
	char lookup[3 * HEXKEYBYTES];
	char *p;

	if (secretkey == NULL)
		return (0);
	if (!FUNC0(netname, lookup))
		return (0);
	p = FUNC2(lookup, ':');
	if (p == NULL) {
		return (0);
	}
	p++;
	if (!FUNC4(p, passwd)) {
		return (0);
	}
	if (FUNC1(p, p + HEXKEYBYTES, KEYCHECKSUMSIZE) != 0) {
		secretkey[0] = '\0';
		return (1);
	}
	p[HEXKEYBYTES] = '\0';
	(void) FUNC3(secretkey, p, HEXKEYBYTES);
	secretkey[HEXKEYBYTES] = '\0';
	return (1);
}