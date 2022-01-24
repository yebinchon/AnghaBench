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
struct protoent_data {char** aliases; int /*<<< orphan*/ * fp; int /*<<< orphan*/  line; } ;
struct protoent {char* p_name; long p_proto; char** p_aliases; } ;

/* Variables and functions */
 long USHRT_MAX ; 
 int _MAXALIASES ; 
 int /*<<< orphan*/  _PATH_PROTOCOLS ; 
 char* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC2 (char*,char*) ; 
 long FUNC3 (char*,char**,int) ; 

int
FUNC4(struct protoent *pe, struct protoent_data *ped)
{
	char *p;
	char *cp, **q, *endp;
	long l;

	if (ped->fp == NULL && (ped->fp = FUNC1(_PATH_PROTOCOLS, "re")) == NULL)
		return (-1);
again:
	if ((p = FUNC0(ped->line, sizeof ped->line, ped->fp)) == NULL)
		return (-1);
	if (*p == '#')
		goto again;
	cp = FUNC2(p, "#\n");
	if (cp != NULL)
		*cp = '\0';
	pe->p_name = p;
	cp = FUNC2(p, " \t");
	if (cp == NULL)
		goto again;
	*cp++ = '\0';
	while (*cp == ' ' || *cp == '\t')
		cp++;
	p = FUNC2(cp, " \t");
	if (p != NULL)
		*p++ = '\0';
	l = FUNC3(cp, &endp, 10);
	if (endp == cp || *endp != '\0' || l < 0 || l > USHRT_MAX)
		goto again;
	pe->p_proto = l;
	q = pe->p_aliases = ped->aliases;
	if (p != NULL) {
		cp = p;
		while (cp && *cp) {
			if (*cp == ' ' || *cp == '\t') {
				cp++;
				continue;
			}
			if (q < &ped->aliases[_MAXALIASES - 1])
				*q++ = cp;
			cp = FUNC2(cp, " \t");
			if (cp != NULL)
				*cp++ = '\0';
		}
	}
	*q = NULL;
	return (0);
}