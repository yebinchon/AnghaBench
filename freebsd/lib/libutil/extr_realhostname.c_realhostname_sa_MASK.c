#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * s6_addr; } ;
struct sockaddr_in6 {scalar_t__ sin6_scope_id; TYPE_2__ sin6_addr; int /*<<< orphan*/  sin6_port; } ;
struct sockaddr_in {int sin_len; scalar_t__ ai_family; int ai_flags; int /*<<< orphan*/ * ai_canonname; struct sockaddr* ai_addr; struct sockaddr_in* ai_next; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  sin_addr; int /*<<< orphan*/  sin_port; scalar_t__ sin_family; } ;
struct sockaddr {scalar_t__ sa_family; int sa_len; } ;
struct in_addr {int dummy; } ;
struct addrinfo {int sin_len; scalar_t__ ai_family; int ai_flags; int /*<<< orphan*/ * ai_canonname; struct sockaddr* ai_addr; struct addrinfo* ai_next; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  sin_addr; int /*<<< orphan*/  sin_port; scalar_t__ sin_family; } ;
typedef  int /*<<< orphan*/  lsin ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_3__ {int /*<<< orphan*/  si_port; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int AI_CANONNAME ; 
 int AI_PASSIVE ; 
 int HOSTNAME_FOUND ; 
 int HOSTNAME_INCORRECTNAME ; 
 int HOSTNAME_INVALIDADDR ; 
 int HOSTNAME_INVALIDNAME ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int NI_MAXHOST ; 
 int /*<<< orphan*/  NI_NAMEREQD ; 
 int /*<<< orphan*/  NI_NUMERICHOST ; 
 struct sockaddr_in6* FUNC1 (struct sockaddr*) ; 
 TYPE_1__* FUNC2 (struct sockaddr*) ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr_in*) ; 
 int FUNC4 (char*,int /*<<< orphan*/ *,struct sockaddr_in*,struct sockaddr_in**) ; 
 int FUNC5 (struct sockaddr*,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sockaddr*,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ *,int) ; 
 size_t FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (char*,size_t) ; 

int
FUNC13(char *host, size_t hsize, struct sockaddr *addr, int addrlen)
{
	int result, error;
	char buf[NI_MAXHOST];
#ifdef INET6
	struct sockaddr_in lsin;
#endif

	result = HOSTNAME_INVALIDADDR;

#ifdef INET6
	/* IPv4 mapped IPv6 addr consideraton, specified in rfc2373. */
	if (addr->sa_family == AF_INET6 &&
	    addrlen == sizeof(struct sockaddr_in6) &&
	    IN6_IS_ADDR_V4MAPPED(&SOCKADDR_IN6(addr)->sin6_addr)) {
		struct sockaddr_in6 *sin6;

		sin6 = SOCKADDR_IN6(addr);

		memset(&lsin, 0, sizeof(lsin));
		lsin.sin_len = sizeof(struct sockaddr_in);
		lsin.sin_family = AF_INET;
		lsin.sin_port = sin6->sin6_port;
		memcpy(&lsin.sin_addr, &sin6->sin6_addr.s6_addr[12],
		       sizeof(struct in_addr));
		addr = (struct sockaddr *)&lsin;
		addrlen = lsin.sin_len;
	}
#endif

	error = FUNC5(addr, addrlen, buf, sizeof(buf), NULL, 0,
			    NI_NAMEREQD);
	if (error == 0) {
		struct addrinfo hints, *res, *ores;
		struct sockaddr *sa;

		FUNC8(&hints, 0, sizeof(struct addrinfo));
		hints.ai_family = addr->sa_family;
		hints.ai_flags = AI_CANONNAME | AI_PASSIVE;
		hints.ai_socktype = SOCK_STREAM;

		error = FUNC4(buf, NULL, &hints, &res);
		if (error) {
			result = HOSTNAME_INVALIDNAME;
			goto numeric;
		}
		for (ores = res; ; res = res->ai_next) {
			if (res == NULL) {
				FUNC3(ores);
				result = HOSTNAME_INCORRECTNAME;
				goto numeric;
			}
			sa = res->ai_addr;
			if (sa == NULL) {
				FUNC3(ores);
				result = HOSTNAME_INCORRECTNAME;
				goto numeric;
			}
			if (sa->sa_len == addrlen &&
			    sa->sa_family == addr->sa_family) {
				FUNC2(sa)->si_port = FUNC2(addr)->si_port;
#ifdef INET6
				/*
				 * XXX: sin6_socpe_id may not been
				 * filled by DNS
				 */
				if (sa->sa_family == AF_INET6 &&
				    SOCKADDR_IN6(sa)->sin6_scope_id == 0)
					SOCKADDR_IN6(sa)->sin6_scope_id =
					    SOCKADDR_IN6(addr)->sin6_scope_id;
#endif
				if (!FUNC6(sa, addr, sa->sa_len)) {
					result = HOSTNAME_FOUND;
					if (ores->ai_canonname == NULL) {
						FUNC3(ores);
						goto numeric;
					}
					FUNC9(buf, ores->ai_canonname,
						sizeof(buf));
					FUNC12(buf, hsize);
					if (FUNC10(buf) > hsize &&
					    addr->sa_family == AF_INET) {
						FUNC3(ores);
						goto numeric;
					}
					FUNC11(host, buf, hsize);
					break;
				}
			}
		}
		FUNC3(ores);
	} else {
    numeric:
		if (FUNC5(addr, addrlen, buf, sizeof(buf), NULL, 0,
				NI_NUMERICHOST) == 0)
			FUNC11(host, buf, hsize);
	}

	return result;
}