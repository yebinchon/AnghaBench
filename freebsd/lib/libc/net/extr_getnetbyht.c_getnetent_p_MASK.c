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
struct netent_data {char* netbuf; char** net_aliases; int /*<<< orphan*/ * netf; } ;
struct netent {char* n_name; char** n_aliases; int /*<<< orphan*/  n_addrtype; int /*<<< orphan*/  n_net; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  BUFSIZ ; 
 int /*<<< orphan*/  NO_RECOVERY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int _MAXALIASES ; 
 int /*<<< orphan*/  _PATH_NETWORKS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int FUNC6 (char*) ; 
 char* FUNC7 (char*,char*) ; 

__attribute__((used)) static int
FUNC8(struct netent *ne, struct netent_data *ned)
{
	char *p, *bp, *ep;
	char *cp, **q;
	int len;
	char line[BUFSIZ + 1];

	if (ned->netf == NULL &&
	    (ned->netf = FUNC3(_PATH_NETWORKS, "re")) == NULL)
		return (-1);
again:
	p = FUNC2(line, sizeof line, ned->netf);
	if (p == NULL)
		return (-1);
	if (*p == '#')
		goto again;
	cp = FUNC7(p, "#\n");
	if (cp != NULL)
		*cp = '\0';
	bp = ned->netbuf;
	ep = ned->netbuf + sizeof ned->netbuf;
	ne->n_name = bp;
	cp = FUNC7(p, " \t");
	if (cp == NULL)
		goto again;
	*cp++ = '\0';
	len = FUNC6(p) + 1;
	if (ep - bp < len) {
		FUNC0(FUNC1(), NO_RECOVERY);
		return (-1);
	}
	FUNC5(bp, p, ep - bp);
	bp += len;
	while (*cp == ' ' || *cp == '\t')
		cp++;
	p = FUNC7(cp, " \t");
	if (p != NULL)
		*p++ = '\0';
	ne->n_net = FUNC4(cp);
	ne->n_addrtype = AF_INET;
	q = ne->n_aliases = ned->net_aliases;
	if (p != NULL) {
		cp = p;
		while (cp && *cp) {
			if (*cp == ' ' || *cp == '\t') {
				cp++;
				continue;
			}
			if (q >= &ned->net_aliases[_MAXALIASES - 1])
				break;
			p = FUNC7(cp, " \t");
			if (p != NULL)
				*p++ = '\0';
			len = FUNC6(cp) + 1;
			if (ep - bp < len)
				break;
			FUNC5(bp, cp, ep - bp);
			*q++ = bp;
			bp += len;
			cp = p;
		}
	}
	*q = NULL;
	return (0);
}