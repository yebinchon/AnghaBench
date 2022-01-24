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
 int /*<<< orphan*/  PORT_MAX ; 
 int /*<<< orphan*/  PORT_MAX_LEN ; 
 int FUNC0 () ; 
 char* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 char** portlist ; 
 scalar_t__ rflag ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,int) ; 
 char* FUNC4 (char*,char) ; 
 char* FUNC5 (char*) ; 
 int FUNC6 (char*,int,int /*<<< orphan*/ ,char const**) ; 

void
FUNC7(char *p)
{
	const char *errstr;
	char *n;
	int hi, lo, cp;
	int x = 0;

	if ((n = FUNC4(p, '-')) != NULL) {
		*n = '\0';
		n++;

		/* Make sure the ports are in order: lowest->highest. */
		hi = FUNC6(n, 1, PORT_MAX, &errstr);
		if (errstr)
			FUNC2(1, "port number %s: %s", errstr, n);
		lo = FUNC6(p, 1, PORT_MAX, &errstr);
		if (errstr)
			FUNC2(1, "port number %s: %s", errstr, p);

		if (lo > hi) {
			cp = hi;
			hi = lo;
			lo = cp;
		}

		/* Load ports sequentially. */
		for (cp = lo; cp <= hi; cp++) {
			portlist[x] = FUNC1(1, PORT_MAX_LEN);
			if (portlist[x] == NULL)
				FUNC2(1, "calloc");
			FUNC3(portlist[x], PORT_MAX_LEN, "%d", cp);
			x++;
		}

		/* Randomly swap ports. */
		if (rflag) {
			int y;
			char *c;

			for (x = 0; x <= (hi - lo); x++) {
				y = (FUNC0() & 0xFFFF) % (hi - lo);
				c = portlist[x];
				portlist[x] = portlist[y];
				portlist[y] = c;
			}
		}
	} else {
		hi = FUNC6(p, 1, PORT_MAX, &errstr);
		if (errstr)
			FUNC2(1, "port number %s: %s", errstr, p);
		portlist[0] = FUNC5(p);
		if (portlist[0] == NULL)
			FUNC2(1, "strdup");
	}
}