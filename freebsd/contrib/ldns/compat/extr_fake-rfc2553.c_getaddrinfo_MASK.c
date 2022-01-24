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
typedef  int /*<<< orphan*/  u_long ;
struct servent {long s_port; } ;
struct in_addr {int /*<<< orphan*/  s_addr; } ;
struct hostent {scalar_t__* h_addr_list; scalar_t__* h_name; } ;
struct addrinfo {int ai_flags; struct addrinfo* ai_next; } ;

/* Variables and functions */
 int AI_NUMERICHOST ; 
 int AI_PASSIVE ; 
 int EAI_MEMORY ; 
 int EAI_NODATA ; 
 int EAI_NONAME ; 
 int /*<<< orphan*/  FUNC0 (struct addrinfo*) ; 
 struct hostent* FUNC1 (char const*) ; 
 struct servent* FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 long FUNC4 (long) ; 
 scalar_t__ FUNC5 (char const*,struct in_addr*) ; 
 struct addrinfo* FUNC6 (long,int /*<<< orphan*/ ,struct addrinfo const*) ; 
 long FUNC7 (char const*,char**,int) ; 

int
FUNC8(const char *hostname, const char *servname, 
    const struct addrinfo *hints, struct addrinfo **res)
{
	struct hostent *hp;
	struct servent *sp;
	struct in_addr in;
	int i;
	long int port;
	u_long addr;

	port = 0;
	if (servname != NULL) {
		char *cp;

		port = FUNC7(servname, &cp, 10);
		if (port > 0 && port <= 65535 && *cp == '\0')
			port = FUNC4(port);
		else if ((sp = FUNC2(servname, NULL)) != NULL)
			port = sp->s_port;
		else
			port = 0;
	}

	if (hints && hints->ai_flags & AI_PASSIVE) {
		addr = FUNC3(0x00000000);
		if (hostname && FUNC5(hostname, &in) != 0)
			addr = in.s_addr;
		*res = FUNC6(port, addr, hints);
		if (*res == NULL) 
			return (EAI_MEMORY);
		return (0);
	}
		
	if (!hostname) {
		*res = FUNC6(port, FUNC3(0x7f000001), hints);
		if (*res == NULL) 
			return (EAI_MEMORY);
		return (0);
	}
	
	if (FUNC5(hostname, &in)) {
		*res = FUNC6(port, in.s_addr, hints);
		if (*res == NULL) 
			return (EAI_MEMORY);
		return (0);
	}
	
	/* Don't try DNS if AI_NUMERICHOST is set */
	if (hints && hints->ai_flags & AI_NUMERICHOST)
		return (EAI_NONAME);
	
	hp = FUNC1(hostname);
	if (hp && hp->h_name && hp->h_name[0] && hp->h_addr_list[0]) {
		struct addrinfo *cur, *prev;

		cur = prev = *res = NULL;
		for (i = 0; hp->h_addr_list[i]; i++) {
			struct in_addr *in = (struct in_addr *)hp->h_addr_list[i];

			cur = FUNC6(port, in->s_addr, hints);
			if (cur == NULL) {
				if (*res != NULL)
					FUNC0(*res);
				return (EAI_MEMORY);
			}
			if (prev)
				prev->ai_next = cur;
			else
				*res = cur;

			prev = cur;
		}
		return (0);
	}
	
	return (EAI_NODATA);
}