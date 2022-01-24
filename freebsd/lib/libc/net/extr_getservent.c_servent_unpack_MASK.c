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
struct servent {char* s_name; char* s_proto; char** s_aliases; int /*<<< orphan*/  s_port; } ;
typedef  int /*<<< orphan*/  in_port_t ;

/* Variables and functions */
 int ERANGE ; 
 long USHRT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct servent*,int /*<<< orphan*/ ,int) ; 
 char* FUNC2 (char*,char*) ; 
 long FUNC3 (char*,char**,int) ; 

__attribute__((used)) static int
FUNC4(char *p, struct servent *serv, char **aliases,
    size_t aliases_size, int *errnop)
{
	char *cp, **q, *endp;
	long l;

	if (*p == '#')
		return -1;

	FUNC1(serv, 0, sizeof(struct servent));

	cp = FUNC2(p, "#\n");
	if (cp != NULL)
		*cp = '\0';
	serv->s_name = p;

	p = FUNC2(p, " \t");
	if (p == NULL)
		return -1;
	*p++ = '\0';
	while (*p == ' ' || *p == '\t')
		p++;
	cp = FUNC2(p, ",/");
	if (cp == NULL)
		return -1;

	*cp++ = '\0';
	l = FUNC3(p, &endp, 10);
	if (endp == p || *endp != '\0' || l < 0 || l > USHRT_MAX)
		return -1;
	serv->s_port = FUNC0((in_port_t)l);
	serv->s_proto = cp;

	q = serv->s_aliases = aliases;
	cp = FUNC2(cp, " \t");
	if (cp != NULL)
		*cp++ = '\0';
	while (cp && *cp) {
		if (*cp == ' ' || *cp == '\t') {
			cp++;
			continue;
		}
		if (q < &aliases[aliases_size - 1]) {
			*q++ = cp;
		} else {
			*q = NULL;
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