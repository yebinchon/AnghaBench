#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_short ;
typedef  int /*<<< orphan*/  u_int32_t ;
struct TYPE_7__ {int /*<<< orphan*/ * s6_addr; } ;
struct sockaddr_in6 {TYPE_2__ sin6_addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int /*<<< orphan*/  sin_port; } ;
struct sockaddr {int sa_family; } ;
struct servent {char* s_name; } ;
struct hostent {char* h_name; } ;
struct afd {int a_off; int /*<<< orphan*/  a_af; int /*<<< orphan*/  a_addrlen; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  numserv ;
typedef  int /*<<< orphan*/  numaddr ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int EAI_MEMORY ; 
 int EAI_NONAME ; 
 int EAI_SYSTEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int NI_DGRAM ; 
 int NI_NAMEREQD ; 
 int NI_NOFQDN ; 
 int NI_NUMERICHOST ; 
 int NI_NUMERICSERV ; 
 int /*<<< orphan*/  FUNC7 (struct hostent*) ; 
 struct hostent* FUNC8 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 struct servent* FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,char const*,char*,size_t) ; 
 int FUNC11 (struct sockaddr const*,char const*,char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*,int) ; 
 char* FUNC15 (char*,char) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,size_t) ; 
 int FUNC17 (char*) ; 

__attribute__((used)) static int
FUNC18(const struct afd *afd,
    const struct sockaddr *sa, socklen_t salen,
    char *host, size_t hostlen, char *serv, size_t servlen,
    int flags)
{
	struct servent *sp;
	struct hostent *hp;
	u_short port;
	const char *addr;
	u_int32_t v4a;
	int h_error;
	char numserv[512];
	char numaddr[512];

	/* network byte order */
	port = ((const struct sockaddr_in *)sa)->sin_port;
	addr = (const char *)sa + afd->a_off;

	if (serv == NULL || servlen == 0) {
		/*
		 * do nothing in this case.
		 * in case you are wondering if "&&" is more correct than
		 * "||" here: rfc2553bis-03 says that serv == NULL OR
		 * servlen == 0 means that the caller does not want the result.
		 */
	} else {
		if (flags & NI_NUMERICSERV)
			sp = NULL;
		else {
			sp = FUNC9(port,
				(flags & NI_DGRAM) ? "udp" : "tcp");
		}
		if (sp) {
			if (FUNC17(sp->s_name) + 1 > servlen)
				return EAI_MEMORY;
			FUNC16(serv, sp->s_name, servlen);
		} else {
			FUNC14(numserv, sizeof(numserv), "%u", FUNC13(port));
			if (FUNC17(numserv) + 1 > servlen)
				return EAI_MEMORY;
			FUNC16(serv, numserv, servlen);
		}
	}

	switch (sa->sa_family) {
	case AF_INET:
		v4a = (u_int32_t)
		    FUNC12(((const struct sockaddr_in *)sa)->sin_addr.s_addr);
		if (FUNC5(v4a) || FUNC4(v4a) ||
		    FUNC6(v4a))
			flags |= NI_NUMERICHOST;
		break;
#ifdef INET6
	case AF_INET6:
	    {
		const struct sockaddr_in6 *sin6;
		sin6 = (const struct sockaddr_in6 *)sa;
		switch (sin6->sin6_addr.s6_addr[0]) {
		case 0x00:
			if (IN6_IS_ADDR_V4MAPPED(&sin6->sin6_addr))
				;
			else if (IN6_IS_ADDR_LOOPBACK(&sin6->sin6_addr))
				;
			else
				flags |= NI_NUMERICHOST;
			break;
		default:
			if (IN6_IS_ADDR_LINKLOCAL(&sin6->sin6_addr)) {
				flags |= NI_NUMERICHOST;
			}
			else if (IN6_IS_ADDR_MULTICAST(&sin6->sin6_addr))
				flags |= NI_NUMERICHOST;
			break;
		}
	    }
		break;
#endif
	}
	if (host == NULL || hostlen == 0) {
		/*
		 * do nothing in this case.
		 * in case you are wondering if "&&" is more correct than
		 * "||" here: rfc2553bis-03 says that host == NULL or
		 * hostlen == 0 means that the caller does not want the result.
		 */
	} else if (flags & NI_NUMERICHOST) {
		size_t numaddrlen;

		/* NUMERICHOST and NAMEREQD conflicts with each other */
		if (flags & NI_NAMEREQD)
			return EAI_NONAME;

		switch(afd->a_af) {
#ifdef INET6
		case AF_INET6:
		{
			int error;

			if ((error = ip6_parsenumeric(sa, addr, host,
						      hostlen, flags)) != 0)
				return(error);
			break;
		}
#endif
		default:
			if (FUNC10(afd->a_af, addr, numaddr, sizeof(numaddr))
			    == NULL)
				return EAI_SYSTEM;
			numaddrlen = FUNC17(numaddr);
			if (numaddrlen + 1 > hostlen) /* don't forget terminator */
				return EAI_MEMORY;
			FUNC16(host, numaddr, hostlen);
			break;
		}
	} else {
		hp = FUNC8(addr, afd->a_addrlen, afd->a_af, &h_error);

		if (hp) {
#if 0
			/*
			 * commented out, since "for local host" is not
			 * implemented here - see RFC2553 p30
			 */
			if (flags & NI_NOFQDN) {
				char *p;
				p = strchr(hp->h_name, '.');
				if (p)
					*p = '\0';
			}
#endif
			if (FUNC17(hp->h_name) + 1 > hostlen) {
				FUNC7(hp);
				return EAI_MEMORY;
			}
			FUNC16(host, hp->h_name, hostlen);
			FUNC7(hp);
		} else {
			if (flags & NI_NAMEREQD)
				return EAI_NONAME;
			switch(afd->a_af) {
#ifdef INET6
			case AF_INET6:
			{
				int error;

				if ((error = ip6_parsenumeric(sa, addr, host,
							      hostlen,
							      flags)) != 0)
					return(error);
				break;
			}
#endif
			default:
				if (FUNC10(afd->a_af, addr, host,
				    hostlen) == NULL)
					return EAI_SYSTEM;
				break;
			}
		}
	}
	return(0);
}