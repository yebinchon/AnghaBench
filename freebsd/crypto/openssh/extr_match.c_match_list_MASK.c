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
typedef  int /*<<< orphan*/  u_int ;

/* Variables and functions */
 int MAX_PROP ; 
 int /*<<< orphan*/  SEP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char**,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char const*) ; 

char *
FUNC5(const char *client, const char *server, u_int *next)
{
	char *sproposals[MAX_PROP];
	char *c, *s, *p, *ret, *cp, *sp;
	int i, j, nproposals;

	c = cp = FUNC4(client);
	s = sp = FUNC4(server);

	for ((p = FUNC3(&sp, SEP)), i=0; p && *p != '\0';
	    (p = FUNC3(&sp, SEP)), i++) {
		if (i < MAX_PROP)
			sproposals[i] = p;
		else
			break;
	}
	nproposals = i;

	for ((p = FUNC3(&cp, SEP)), i=0; p && *p != '\0';
	    (p = FUNC3(&cp, SEP)), i++) {
		for (j = 0; j < nproposals; j++) {
			if (FUNC1(p, sproposals[j]) == 0) {
				ret = FUNC4(p);
				if (next != NULL)
					*next = (cp == NULL) ?
					    FUNC2(c) : (u_int)(cp - c);
				FUNC0(c);
				FUNC0(s);
				return ret;
			}
		}
	}
	if (next != NULL)
		*next = FUNC2(c);
	FUNC0(c);
	FUNC0(s);
	return NULL;
}