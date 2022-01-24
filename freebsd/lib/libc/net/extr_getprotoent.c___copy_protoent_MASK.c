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
struct protoent {char** p_aliases; char* p_name; int /*<<< orphan*/  p_proto; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  ERANGE ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 (char*) ; 

int
FUNC3(struct protoent *pe, struct protoent *pptr, char *buf,
    size_t buflen)
{
	char *cp;
	int i, n;
	int numptr, len;

	/* Find out the amount of space required to store the answer. */
	numptr = 1; /* NULL ptr */
	len = (char *)FUNC0(buf) - buf;
	for (i = 0; pe->p_aliases[i]; i++, numptr++) {
		len += FUNC2(pe->p_aliases[i]) + 1;
	}
	len += FUNC2(pe->p_name) + 1;
	len += numptr * sizeof(char*);

	if (len > (int)buflen) {
		errno = ERANGE;
		return (-1);
	}

	/* copy protocol value*/
	pptr->p_proto = pe->p_proto;

	cp = (char *)FUNC0(buf) + numptr * sizeof(char *);

	/* copy official name */
	n = FUNC2(pe->p_name) + 1;
	FUNC1(cp, pe->p_name);
	pptr->p_name = cp;
	cp += n;

	/* copy aliases */
	pptr->p_aliases = (char **)FUNC0(buf);
	for (i = 0 ; pe->p_aliases[i]; i++) {
		n = FUNC2(pe->p_aliases[i]) + 1;
		FUNC1(cp, pe->p_aliases[i]);
		pptr->p_aliases[i] = cp;
		cp += n;
	}
	pptr->p_aliases[i] = NULL;

	return (0);
}