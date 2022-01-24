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
struct sockaddr_storage {int dummy; } ;
struct addrinfo {int ai_flags; int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_family; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; } ;
typedef  int /*<<< orphan*/  portstr ;
typedef  int /*<<< orphan*/  iporhost ;
typedef  int intmax_t ;
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
 int AI_ADDRCONFIG ; 
 int AI_NUMERICSERV ; 
 int EINVAL ; 
 int ENAMETOOLONG ; 
 int ENOENT ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int MAXHOSTNAMELEN ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  PF_INET6 ; 
 int /*<<< orphan*/  PF_UNSPEC ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (struct addrinfo*,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (char*,char*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr_storage*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char const*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int) ; 
 char* FUNC8 (char const*,char) ; 
 size_t FUNC9 (char*,char const*,size_t) ; 
 scalar_t__ FUNC10 (char const*,char*,int) ; 
 char* FUNC11 (char const*,char) ; 

__attribute__((used)) static int
FUNC12(const char *addr, int defport, struct sockaddr_storage *sap)
{
	char iporhost[MAXHOSTNAMELEN], portstr[6];
	struct addrinfo hints;
	struct addrinfo *res;
	const char *pp;
	intmax_t port;
	size_t size;
	int error;

	if (addr == NULL)
		return (-1);

	FUNC0(&hints, sizeof(hints));
	hints.ai_flags = AI_ADDRCONFIG | AI_NUMERICSERV;
	hints.ai_family = PF_UNSPEC;
	hints.ai_socktype = SOCK_STREAM;
	hints.ai_protocol = IPPROTO_TCP;

	if (FUNC10(addr, "tcp4://", 7) == 0) {
		addr += 7;
		hints.ai_family = PF_INET;
	} else if (FUNC10(addr, "tcp6://", 7) == 0) {
		addr += 7;
		hints.ai_family = PF_INET6;
	} else if (FUNC10(addr, "tcp://", 6) == 0) {
		addr += 6;
	} else {
		/*
		 * Because TCP is the default assume IP or host is given without
		 * prefix.
		 */
	}

	/*
	 * Extract optional port.
	 * There are three cases to consider.
	 * 1. hostname with port, eg. freefall.freebsd.org:8457
	 * 2. IPv4 address with port, eg. 192.168.0.101:8457
	 * 3. IPv6 address with port, eg. [fe80::1]:8457
	 * We discover IPv6 address by checking for two colons and if port is
	 * given, the address has to start with [.
	 */
	pp = NULL;
	if (FUNC8(addr, ':') != FUNC11(addr, ':')) {
		if (addr[0] == '[')
			pp = FUNC11(addr, ':');
	} else {
		pp = FUNC11(addr, ':');
	}
	if (pp == NULL) {
		/* Port not given, use the default. */
		port = defport;
	} else {
		if (FUNC5(pp + 1, 1, 65535, &port) < 0)
			return (errno);
	}
	(void)FUNC7(portstr, sizeof(portstr), "%jd", (intmax_t)port);
	/* Extract host name or IP address. */
	if (pp == NULL) {
		size = sizeof(iporhost);
		if (FUNC9(iporhost, addr, size) >= size)
			return (ENAMETOOLONG);
	} else if (addr[0] == '[' && pp[-1] == ']') {
		size = (size_t)(pp - addr - 2 + 1);
		if (size > sizeof(iporhost))
			return (ENAMETOOLONG);
		(void)FUNC9(iporhost, addr + 1, size);
	} else {
		size = (size_t)(pp - addr + 1);
		if (size > sizeof(iporhost))
			return (ENAMETOOLONG);
		(void)FUNC9(iporhost, addr, size);
	}

	error = FUNC3(iporhost, portstr, &hints, &res);
	if (error != 0) {
		FUNC6(1, "getaddrinfo(%s, %s) failed: %s.", iporhost,
		    portstr, FUNC2(error));
		return (EINVAL);
	}
	if (res == NULL)
		return (ENOENT);

	FUNC4(sap, res->ai_addr, res->ai_addrlen);

	FUNC1(res);

	return (0);
}