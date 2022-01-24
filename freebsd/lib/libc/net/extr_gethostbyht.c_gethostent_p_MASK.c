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
struct hostent_data {char** h_addr_ptrs; char* hostbuf; char** host_aliases; scalar_t__ host_addr; int /*<<< orphan*/  hostf; } ;
struct hostent {char** h_addr_list; int h_length; int h_addrtype; char* h_name; char** h_aliases; } ;
typedef  int /*<<< orphan*/  res_state ;

/* Variables and functions */
 int AF_INET ; 
 int AF_INET6 ; 
 int /*<<< orphan*/  BUFSIZ ; 
 int /*<<< orphan*/  HOST_NOT_FOUND ; 
 int IN6ADDRSZ ; 
 int INADDRSZ ; 
 int /*<<< orphan*/  NETDB_INTERNAL ; 
 int /*<<< orphan*/  NETDB_SUCCESS ; 
 int /*<<< orphan*/  NO_RECOVERY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int _MAXALIASES ; 
 int /*<<< orphan*/  _PATH_HOSTS ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 char* FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int FUNC6 (char*) ; 
 char* FUNC7 (char*,char*) ; 

__attribute__((used)) static int
FUNC8(struct hostent *he, struct hostent_data *hed, int mapped,
    res_state statp)
{
	char *p, *bp, *ep;
	char *cp, **q;
	int af, len;
	char hostbuf[BUFSIZ + 1];

	if (!hed->hostf && !(hed->hostf = FUNC3(_PATH_HOSTS, "re"))) {
		FUNC0(statp, NETDB_INTERNAL);
		return (-1);
	}
 again:
	if (!(p = FUNC2(hostbuf, sizeof hostbuf, hed->hostf))) {
		FUNC0(statp, HOST_NOT_FOUND);
		return (-1);
	}
	if (*p == '#')
		goto again;
	cp = FUNC7(p, "#\n");
	if (cp != NULL)
		*cp = '\0';
	if (!(cp = FUNC7(p, " \t")))
		goto again;
	*cp++ = '\0';
	if (FUNC4(AF_INET6, p, hed->host_addr) > 0) {
		af = AF_INET6;
		len = IN6ADDRSZ;
	} else if (FUNC4(AF_INET, p, hed->host_addr) > 0) {
		if (mapped) {
			FUNC1((char *)hed->host_addr,
			    (char *)hed->host_addr);
			af = AF_INET6;
			len = IN6ADDRSZ;
		} else {
			af = AF_INET;
			len = INADDRSZ;
		}
	} else {
		goto again;
	}
	hed->h_addr_ptrs[0] = (char *)hed->host_addr;
	hed->h_addr_ptrs[1] = NULL;
	he->h_addr_list = hed->h_addr_ptrs;
	he->h_length = len;
	he->h_addrtype = af;
	while (*cp == ' ' || *cp == '\t')
		cp++;
	bp = hed->hostbuf;
	ep = hed->hostbuf + sizeof hed->hostbuf;
	he->h_name = bp;
	q = he->h_aliases = hed->host_aliases;
	if ((p = FUNC7(cp, " \t")) != NULL)
		*p++ = '\0';
	len = FUNC6(cp) + 1;
	if (ep - bp < len) {
		FUNC0(statp, NO_RECOVERY);
		return (-1);
	}
	FUNC5(bp, cp, ep - bp);
	bp += len;
	cp = p;
	while (cp && *cp) {
		if (*cp == ' ' || *cp == '\t') {
			cp++;
			continue;
		}
		if (q >= &hed->host_aliases[_MAXALIASES - 1])
			break;
		if ((p = FUNC7(cp, " \t")) != NULL)
			*p++ = '\0';
		len = FUNC6(cp) + 1;
		if (ep - bp < len)
			break;
		FUNC5(bp, cp, ep - bp);
		*q++ = bp;
		bp += len;
		cp = p;
	}
	*q = NULL;
	FUNC0(statp, NETDB_SUCCESS);
	return (0);
}