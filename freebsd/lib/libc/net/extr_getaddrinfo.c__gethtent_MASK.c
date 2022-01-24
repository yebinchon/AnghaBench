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
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; } ;
struct addrinfo {scalar_t__ ai_family; int ai_flags; scalar_t__ ai_protocol; int /*<<< orphan*/  ai_socktype; struct addrinfo* ai_next; scalar_t__ ai_addr; } ;
typedef  int /*<<< orphan*/  hints ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int AI_CANONNAME ; 
 int AI_NUMERICHOST ; 
 int AI_V4MAPPED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  _PATH_HOSTS ; 
 char* FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct addrinfo*) ; 
 scalar_t__ FUNC4 (struct addrinfo const*,struct addrinfo*,char*) ; 
 int FUNC5 (char const*,char*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC6 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 
 char* FUNC8 (char*,char*) ; 

__attribute__((used)) static struct addrinfo *
FUNC9(FILE **hostf, const char *name, const struct addrinfo *pai)
{
	char *p;
	char *cp, *tname, *cname;
	struct addrinfo hints, *res0, *res;
	int error;
	const char *addr;
	char hostbuf[8*1024];

	if (!*hostf && !(*hostf = FUNC2(_PATH_HOSTS, "re")))
		return (NULL);
again:
	if (!(p = FUNC1(hostbuf, sizeof hostbuf, *hostf)))
		return (NULL);
	if (*p == '#')
		goto again;
	cp = FUNC8(p, "#\n");
	if (cp != NULL)
		*cp = '\0';
	if (!(cp = FUNC8(p, " \t")))
		goto again;
	*cp++ = '\0';
	addr = p;
	cname = NULL;
	/* if this is not something we're looking for, skip it. */
	while (cp && *cp) {
		if (*cp == ' ' || *cp == '\t') {
			cp++;
			continue;
		}
		tname = cp;
		if (cname == NULL)
			cname = cp;
		if ((cp = FUNC8(cp, " \t")) != NULL)
			*cp++ = '\0';
		if (FUNC7(name, tname) == 0)
			goto found;
	}
	goto again;

found:
	/* we should not glob socktype/protocol here */
	FUNC6(&hints, 0, sizeof(hints));
	hints.ai_family = pai->ai_family;
	hints.ai_socktype = SOCK_DGRAM;
	hints.ai_protocol = 0;
	hints.ai_flags = AI_NUMERICHOST;
	if (pai->ai_family == AF_INET6 &&
	    (pai->ai_flags & AI_V4MAPPED) == AI_V4MAPPED)
		hints.ai_flags |= AI_V4MAPPED;
	error = FUNC5(addr, "0", &hints, &res0);
	if (error)
		goto again;
#ifdef FILTER_V4MAPPED
	/* XXX should check all items in the chain */
	if (res0->ai_family == AF_INET6 &&
	    IN6_IS_ADDR_V4MAPPED(&((struct sockaddr_in6 *)res0->ai_addr)->sin6_addr)) {
		freeaddrinfo(res0);
		goto again;
	}
#endif
	for (res = res0; res; res = res->ai_next) {
		/* cover it up */
		res->ai_flags = pai->ai_flags;
		res->ai_socktype = pai->ai_socktype;
		res->ai_protocol = pai->ai_protocol;

		if (pai->ai_flags & AI_CANONNAME) {
			if (FUNC4(pai, res, cname) != 0) {
				FUNC3(res0);
				goto again;
			}
		}
	}
	return res0;
}