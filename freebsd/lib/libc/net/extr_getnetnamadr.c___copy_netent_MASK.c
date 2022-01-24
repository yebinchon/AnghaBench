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
struct netent {char** n_aliases; char* n_name; int /*<<< orphan*/  n_net; int /*<<< orphan*/  n_addrtype; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  ERANGE ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 (char*) ; 

int
FUNC3(struct netent *ne, struct netent *nptr, char *buf, size_t buflen)
{
	char *cp;
	int i, n;
	int numptr, len;

	/* Find out the amount of space required to store the answer. */
	numptr = 1; /* NULL ptr */
	len = (char *)FUNC0(buf) - buf;
	for (i = 0; ne->n_aliases[i]; i++, numptr++) {
		len += FUNC2(ne->n_aliases[i]) + 1;
	}
	len += FUNC2(ne->n_name) + 1;
	len += numptr * sizeof(char*);

	if (len > (int)buflen) {
		errno = ERANGE;
		return (-1);
	}

	/* copy net value and type */
	nptr->n_addrtype = ne->n_addrtype;
	nptr->n_net = ne->n_net;

	cp = (char *)FUNC0(buf) + numptr * sizeof(char *);

	/* copy official name */
	n = FUNC2(ne->n_name) + 1;
	FUNC1(cp, ne->n_name);
	nptr->n_name = cp;
	cp += n;

	/* copy aliases */
	nptr->n_aliases = (char **)FUNC0(buf);
	for (i = 0 ; ne->n_aliases[i]; i++) {
		n = FUNC2(ne->n_aliases[i]) + 1;
		FUNC1(cp, ne->n_aliases[i]);
		nptr->n_aliases[i] = cp;
		cp += n;
	}
	nptr->n_aliases[i] = NULL;

	return (0);
}