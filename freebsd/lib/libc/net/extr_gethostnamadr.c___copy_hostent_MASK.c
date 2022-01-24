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
struct hostent {char** h_addr_list; int h_length; char** h_aliases; char* h_name; int /*<<< orphan*/  h_addrtype; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  ERANGE ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (char*) ; 

int
FUNC4(struct hostent *he, struct hostent *hptr, char *buf,
    size_t buflen)
{
	char *cp;
	char **ptr;
	int i, n;
	int nptr, len;

	/* Find out the amount of space required to store the answer. */
	nptr = 2; /* NULL ptrs */
	len = (char *)FUNC0(buf) - buf;
	for (i = 0; he->h_addr_list[i]; i++, nptr++) {
		len += he->h_length;
	}
	for (i = 0; he->h_aliases[i]; i++, nptr++) {
		len += FUNC3(he->h_aliases[i]) + 1;
	}
	len += FUNC3(he->h_name) + 1;
	len += nptr * sizeof(char*);

	if (len > buflen) {
		errno = ERANGE;
		return (-1);
	}

	/* copy address size and type */
	hptr->h_addrtype = he->h_addrtype;
	n = hptr->h_length = he->h_length;

	ptr = (char **)FUNC0(buf);
	cp = (char *)FUNC0(buf) + nptr * sizeof(char *);

	/* copy address list */
	hptr->h_addr_list = ptr;
	for (i = 0; he->h_addr_list[i]; i++ , ptr++) {
		FUNC1(cp, he->h_addr_list[i], n);
		hptr->h_addr_list[i] = cp;
		cp += n;
	}
	hptr->h_addr_list[i] = NULL;
	ptr++;

	/* copy official name */
	n = FUNC3(he->h_name) + 1;
	FUNC2(cp, he->h_name);
	hptr->h_name = cp;
	cp += n;

	/* copy aliases */
	hptr->h_aliases = ptr;
	for (i = 0 ; he->h_aliases[i]; i++) {
		n = FUNC3(he->h_aliases[i]) + 1;
		FUNC2(cp, he->h_aliases[i]);
		hptr->h_aliases[i] = cp;
		cp += n;
	}
	hptr->h_aliases[i] = NULL;

	return (0);
}