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
struct addrinfo {int ai_family; int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; struct addrinfo* ai_next; int /*<<< orphan*/  ai_flags; } ;
typedef  int /*<<< orphan*/  on ;
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  AI_PASSIVE ; 
 int EAI_SYSTEM ; 
 int /*<<< orphan*/  IPPROTO_IPV6 ; 
 int /*<<< orphan*/  IPV6_V6ONLY ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (char*,char const*,struct addrinfo*,struct addrinfo**) ; 
 int* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const*,int) ; 
 int FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int *
FUNC12(int af, char *bindname, const char *bindport)
{
	struct addrinfo hints, *res, *r;
	int error, maxs, *s, *socks;
	const int on = 1;

	FUNC7(&hints, 0, sizeof(hints));
	hints.ai_flags = AI_PASSIVE;
	hints.ai_family = af;
	hints.ai_socktype = SOCK_STREAM;
	error = FUNC5(bindname, bindport, &hints, &res);
	if (error) {
		FUNC11(LOG_ERR, "%s", FUNC4(error));
		if (error == EAI_SYSTEM)
			FUNC11(LOG_ERR, "%s", FUNC10(errno));
		return NULL;
	}

	/* Count max number of sockets we may open */
	for (maxs = 0, r = res; r; r = r->ai_next, maxs++)
		;
	socks = FUNC6((maxs + 1) * sizeof(int));
	if (!socks) {
		FUNC3(res);
		FUNC11(LOG_ERR, "couldn't allocate memory for sockets");
		return NULL;
	}

	*socks = 0;   /* num of sockets counter at start of array */
	s = socks + 1;
	for (r = res; r; r = r->ai_next) {
		*s = FUNC9(r->ai_family, r->ai_socktype, r->ai_protocol);
		if (*s < 0) {
			FUNC11(LOG_DEBUG, "control socket: %m");
			continue;
		}
		if (FUNC8(*s, SOL_SOCKET, SO_REUSEADDR,
		    &on, sizeof(on)) < 0)
			FUNC11(LOG_WARNING,
			    "control setsockopt (SO_REUSEADDR): %m");
		if (r->ai_family == AF_INET6) {
			if (FUNC8(*s, IPPROTO_IPV6, IPV6_V6ONLY,
			    &on, sizeof(on)) < 0)
				FUNC11(LOG_WARNING,
				    "control setsockopt (IPV6_V6ONLY): %m");
		}
		if (FUNC0(*s, r->ai_addr, r->ai_addrlen) < 0) {
			FUNC11(LOG_DEBUG, "control bind: %m");
			FUNC1(*s);
			continue;
		}
		(*socks)++;
		s++;
	}

	if (res)
		FUNC3(res);

	if (*socks == 0) {
		FUNC11(LOG_ERR, "control socket: Couldn't bind to any socket");
		FUNC2(socks);
		return NULL;
	}
	return(socks);
}