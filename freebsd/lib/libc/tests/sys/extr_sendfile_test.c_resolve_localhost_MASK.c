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
struct addrinfo {int ai_family; int ai_flags; int ai_socktype; } ;
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int AI_ADDRCONFIG ; 
 int AI_NUMERICHOST ; 
 int AI_NUMERICSERV ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char**,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (char const*,char*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC7 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct addrinfo **res, int domain, int type, int port)
{
	const char *host;
	char *serv;
	struct addrinfo hints;
	int error;

	switch (domain) {
	case AF_INET:
		host = "127.0.0.1";
		break;
	case AF_INET6:
		host = "::1";
		break;
	default:
		FUNC3("unhandled domain: %d", domain);
	}

	FUNC1(FUNC2(&serv, "%d", port) >= 0,
	    "asprintf failed: %s", FUNC8(errno));

	FUNC7(&hints, 0, sizeof(hints));
	hints.ai_family = domain;
	hints.ai_flags = AI_ADDRCONFIG|AI_NUMERICSERV|AI_NUMERICHOST;
	hints.ai_socktype = type;

	error = FUNC6(host, serv, &hints, res);
	FUNC0(error, 0,
	    "getaddrinfo failed: %s", FUNC5(error));
	FUNC4(serv);
}