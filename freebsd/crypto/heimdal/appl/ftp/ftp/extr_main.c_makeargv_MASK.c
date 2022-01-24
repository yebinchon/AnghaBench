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
 int /*<<< orphan*/  argbase ; 
 int /*<<< orphan*/  argbuf ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  line ; 
 scalar_t__ FUNC1 (int) ; 
 int margc ; 
 char** margv ; 
 int margvlen ; 
 scalar_t__ FUNC2 (char**,int) ; 
 scalar_t__ slrflag ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  stringbase ; 

void
FUNC4(void)
{
	char **argp;

	argp = margv;
	stringbase = line;		/* scan from first of buffer */
	argbase = argbuf;		/* store from first of buffer */
	slrflag = 0;
	for (margc = 0; ; margc++) {
		/* Expand array if necessary */
		if (margc == margvlen) {
			int i;

			margv = (margvlen == 0)
				? (char **)FUNC1(20 * sizeof(char *))
				: (char **)FUNC2(margv,
					(margvlen + 20)*sizeof(char *));
			if (margv == NULL)
				FUNC0(1, "cannot realloc argv array");
			for(i = margvlen; i < margvlen + 20; ++i)
				margv[i] = NULL;
			margvlen += 20;
			argp = margv + margc;
		}

		if ((*argp++ = FUNC3()) == NULL)
			break;
	}

}