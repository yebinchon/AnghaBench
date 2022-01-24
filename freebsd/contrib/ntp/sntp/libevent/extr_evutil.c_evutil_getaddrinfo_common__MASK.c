#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int* s6_addr; int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in6 {void* sin_port; void* sin_family; TYPE_1__ sin_addr; void* sin6_port; void* sin6_family; TYPE_1__ sin6_addr; } ;
struct sockaddr_in {void* sin_port; void* sin_family; TYPE_1__ sin_addr; void* sin6_port; void* sin6_family; TYPE_1__ sin6_addr; } ;
struct sockaddr {int dummy; } ;
struct evutil_addrinfo {scalar_t__ ai_family; int ai_flags; int /*<<< orphan*/  ai_protocol; } ;
typedef  int /*<<< orphan*/  sin6 ;
typedef  int /*<<< orphan*/  sin ;

/* Variables and functions */
 void* AF_INET ; 
 void* AF_INET6 ; 
 int EVUTIL_AI_NUMERICHOST ; 
 int EVUTIL_AI_PASSIVE ; 
 int EVUTIL_EAI_FAMILY ; 
 int EVUTIL_EAI_MEMORY ; 
 int EVUTIL_EAI_NEED_RESOLVE ; 
 int EVUTIL_EAI_NONAME ; 
 scalar_t__ PF_INET ; 
 scalar_t__ PF_INET6 ; 
 scalar_t__ PF_UNSPEC ; 
 struct evutil_addrinfo* FUNC0 (struct evutil_addrinfo*,struct evutil_addrinfo*) ; 
 int /*<<< orphan*/  FUNC1 (struct evutil_addrinfo*) ; 
 int /*<<< orphan*/  FUNC2 (struct evutil_addrinfo*) ; 
 int FUNC3 (void*,char const*,TYPE_1__*) ; 
 struct evutil_addrinfo* FUNC4 (struct sockaddr*,int,struct evutil_addrinfo*) ; 
 int FUNC5 (char const*,char const*,struct evutil_addrinfo*) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 void* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct sockaddr_in6*,int /*<<< orphan*/ ,int) ; 

int
FUNC10(const char *nodename, const char *servname,
    struct evutil_addrinfo *hints, struct evutil_addrinfo **res, int *portnum)
{
	int port = 0;
	const char *pname;

	if (nodename == NULL && servname == NULL)
		return EVUTIL_EAI_NONAME;

	/* We only understand 3 families */
	if (hints->ai_family != PF_UNSPEC && hints->ai_family != PF_INET &&
	    hints->ai_family != PF_INET6)
		return EVUTIL_EAI_FAMILY;

	FUNC2(hints);

	/* Look up the port number and protocol, if possible. */
	pname = FUNC6(hints->ai_protocol);
	if (servname) {
		/* XXXX We could look at the protocol we got back from
		 * getservbyname, but it doesn't seem too useful. */
		port = FUNC5(servname, pname, hints);
		if (port < 0) {
			return EVUTIL_EAI_NONAME;
		}
	}

	/* If we have no node name, then we're supposed to bind to 'any' and
	 * connect to localhost. */
	if (nodename == NULL) {
		struct evutil_addrinfo *res4=NULL, *res6=NULL;
		if (hints->ai_family != PF_INET) { /* INET6 or UNSPEC. */
			struct sockaddr_in6 sin6;
			FUNC9(&sin6, 0, sizeof(sin6));
			sin6.sin6_family = AF_INET6;
			sin6.sin6_port = FUNC8(port);
			if (hints->ai_flags & EVUTIL_AI_PASSIVE) {
				/* Bind to :: */
			} else {
				/* connect to ::1 */
				sin6.sin6_addr.s6_addr[15] = 1;
			}
			res6 = FUNC4((struct sockaddr*)&sin6,
			    sizeof(sin6), hints);
			if (!res6)
				return EVUTIL_EAI_MEMORY;
		}

		if (hints->ai_family != PF_INET6) { /* INET or UNSPEC */
			struct sockaddr_in sin;
			FUNC9(&sin, 0, sizeof(sin));
			sin.sin_family = AF_INET;
			sin.sin_port = FUNC8(port);
			if (hints->ai_flags & EVUTIL_AI_PASSIVE) {
				/* Bind to 0.0.0.0 */
			} else {
				/* connect to 127.0.0.1 */
				sin.sin_addr.s_addr = FUNC7(0x7f000001);
			}
			res4 = FUNC4((struct sockaddr*)&sin,
			    sizeof(sin), hints);
			if (!res4) {
				if (res6)
					FUNC1(res6);
				return EVUTIL_EAI_MEMORY;
			}
		}
		*res = FUNC0(res4, res6);
		return 0;
	}

	/* If we can, we should try to parse the hostname without resolving
	 * it. */
	/* Try ipv6. */
	if (hints->ai_family == PF_INET6 || hints->ai_family == PF_UNSPEC) {
		struct sockaddr_in6 sin6;
		FUNC9(&sin6, 0, sizeof(sin6));
		if (1==FUNC3(AF_INET6, nodename, &sin6.sin6_addr)) {
			/* Got an ipv6 address. */
			sin6.sin6_family = AF_INET6;
			sin6.sin6_port = FUNC8(port);
			*res = FUNC4((struct sockaddr*)&sin6,
			    sizeof(sin6), hints);
			if (!*res)
				return EVUTIL_EAI_MEMORY;
			return 0;
		}
	}

	/* Try ipv4. */
	if (hints->ai_family == PF_INET || hints->ai_family == PF_UNSPEC) {
		struct sockaddr_in sin;
		FUNC9(&sin, 0, sizeof(sin));
		if (1==FUNC3(AF_INET, nodename, &sin.sin_addr)) {
			/* Got an ipv6 address. */
			sin.sin_family = AF_INET;
			sin.sin_port = FUNC8(port);
			*res = FUNC4((struct sockaddr*)&sin,
			    sizeof(sin), hints);
			if (!*res)
				return EVUTIL_EAI_MEMORY;
			return 0;
		}
	}


	/* If we have reached this point, we definitely need to do a DNS
	 * lookup. */
	if ((hints->ai_flags & EVUTIL_AI_NUMERICHOST)) {
		/* If we're not allowed to do one, then say so. */
		return EVUTIL_EAI_NONAME;
	}
	*portnum = port;
	return EVUTIL_EAI_NEED_RESOLVE;
}