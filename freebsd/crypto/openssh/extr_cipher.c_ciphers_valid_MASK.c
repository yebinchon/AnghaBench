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
struct sshcipher {int flags; } ;

/* Variables and functions */
 int CFLAG_INTERNAL ; 
 int /*<<< orphan*/  CIPHER_SEP ; 
 struct sshcipher* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 char* FUNC3 (char const*) ; 
 char* FUNC4 (char**,int /*<<< orphan*/ ) ; 

int
FUNC5(const char *names)
{
	const struct sshcipher *c;
	char *cipher_list, *cp;
	char *p;

	if (names == NULL || FUNC2(names, "") == 0)
		return 0;
	if ((cipher_list = cp = FUNC3(names)) == NULL)
		return 0;
	for ((p = FUNC4(&cp, CIPHER_SEP)); p && *p != '\0';
	    (p = FUNC4(&cp, CIPHER_SEP))) {
		c = FUNC0(p);
		if (c == NULL || (c->flags & CFLAG_INTERNAL) != 0) {
			FUNC1(cipher_list);
			return 0;
		}
	}
	FUNC1(cipher_list);
	return 1;
}