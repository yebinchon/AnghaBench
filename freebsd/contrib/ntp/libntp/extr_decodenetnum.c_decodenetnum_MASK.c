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
typedef  int /*<<< orphan*/  u_short ;
struct addrinfo {int ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_flags; } ;
typedef  struct addrinfo sockaddr_u ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  NTP_PORT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct addrinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct addrinfo) ; 
 int /*<<< orphan*/  Z_AI_NUMERICHOST ; 
 int /*<<< orphan*/  FUNC4 (struct addrinfo*) ; 
 int FUNC5 (char const*,char*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC6 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (char const*,char*,int /*<<< orphan*/ *) ; 
 char* FUNC8 (char const*,char) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,int) ; 
 int FUNC10 (char const*) ; 

int
FUNC11(
	const char *num,
	sockaddr_u *netnum
	)
{
	struct addrinfo hints, *ai = NULL;
	int err;
	u_short port;
	const char *cp;
	const char *port_str;
	char *pp;
	char *np;
	char name[80];

	FUNC1(num != NULL);

	if (FUNC10(num) >= sizeof(name)) {
		return 0;
	}

	port_str = NULL;
	if ('[' != num[0]) {
		/*
		 * to distinguish IPv6 embedded colons from a port
		 * specification on an IPv4 address, assume all 
		 * legal IPv6 addresses have at least two colons.
		 */
		pp = FUNC8(num, ':');
		if (NULL == pp)
			cp = num;	/* no colons */
		else if (NULL != FUNC8(pp + 1, ':'))
			cp = num;	/* two or more colons */
		else {			/* one colon */
			FUNC9(name, num, sizeof(name));
			cp = name;
			pp = FUNC8(cp, ':');
			*pp = '\0';
			port_str = pp + 1;
		}
	} else {
		cp = num + 1;
		np = name; 
		while (*cp && ']' != *cp)
			*np++ = *cp++;
		*np = 0;
		if (']' == cp[0] && ':' == cp[1] && '\0' != cp[2])
			port_str = &cp[2];
		cp = name; 
	}
	FUNC3(hints);
	hints.ai_flags = Z_AI_NUMERICHOST;
	err = FUNC5(cp, "ntp", &hints, &ai);
	if (err != 0)
		return 0;
	FUNC0(ai->ai_addrlen <= sizeof(*netnum));
	FUNC3(*netnum);
	FUNC6(netnum, ai->ai_addr, ai->ai_addrlen);
	FUNC4(ai);
	if (NULL == port_str || 1 != FUNC7(port_str, "%hu", &port))
		port = NTP_PORT;
	FUNC2(netnum, port);
	return 1;
}