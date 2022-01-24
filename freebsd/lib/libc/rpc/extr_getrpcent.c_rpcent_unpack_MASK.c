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
struct rpcent {char* r_name; char** r_aliases; int /*<<< orphan*/  r_number; } ;

/* Variables and functions */
 int ERANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,char*) ; 

__attribute__((used)) static int
FUNC3(char *p, struct rpcent *rpc, char **r_aliases,
	size_t aliases_size, int *errnop)
{
	char *cp, **q;

	FUNC0(p != NULL);

	if (*p == '#')
		return (-1);
	cp = FUNC2(p, "#\n");
	if (cp == NULL)
		return (-1);
	*cp = '\0';
	cp = FUNC2(p, " \t");
	if (cp == NULL)
		return (-1);
	*cp++ = '\0';
	/* THIS STUFF IS INTERNET SPECIFIC */
	rpc->r_name = p;
	while (*cp == ' ' || *cp == '\t')
		cp++;
	rpc->r_number = FUNC1(cp);
	q = rpc->r_aliases = r_aliases;
	cp = FUNC2(cp, " \t");
	if (cp != NULL)
		*cp++ = '\0';
	while (cp && *cp) {
		if (*cp == ' ' || *cp == '\t') {
			cp++;
			continue;
		}
		if (q < &(r_aliases[aliases_size - 1]))
			*q++ = cp;
		else {
			*errnop = ERANGE;
			return -1;
		}

		cp = FUNC2(cp, " \t");
		if (cp != NULL)
			*cp++ = '\0';
	}
	*q = NULL;
	return 0;
}