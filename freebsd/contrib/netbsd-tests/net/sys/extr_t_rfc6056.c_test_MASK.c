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
struct sockaddr_storage {int ai_family; int ss_family; int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ss_len; } ;
struct sockaddr {int dummy; } ;
struct addrinfo {int ai_family; int ss_family; int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ss_len; } ;
typedef  int /*<<< orphan*/  ss ;
typedef  int /*<<< orphan*/  hints ;
typedef  int /*<<< orphan*/  hello ;
typedef  int /*<<< orphan*/  al ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int IPPROTO_IP ; 
 int IPPROTO_IPV6 ; 
 int IPV6_PORTALGO ; 
 int IP_PORTALGO ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sockaddr_storage*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (char const*,char const*,struct sockaddr_storage*,struct sockaddr_storage**) ; 
 int /*<<< orphan*/  FUNC9 (struct sockaddr_storage*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int,char const*,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (int,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int,int,int,int*,int) ; 
 int FUNC13 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14(const char *hostname, const char *service, int family, int al)
{
	static const char hello[] = "hello\n";
	int s, error, proto, option;
	struct sockaddr_storage ss;
	struct addrinfo hints, *res;
	
	FUNC9(&hints, 0, sizeof(hints));
	hints.ai_family = family;
	hints.ai_socktype = SOCK_DGRAM;

	switch (family) {
	case AF_INET:
		proto = IPPROTO_IP;
		option = IP_PORTALGO;
		break;
	case AF_INET6:
		proto = IPPROTO_IPV6;
		option = IPV6_PORTALGO;
		break;
	default:
		FUNC0();
	}

	error = FUNC8(hostname, service, &hints, &res);
	if (error)
		FUNC5(EXIT_FAILURE, "Cannot get address for %s (%s)",
		    hostname, FUNC7(error));
	
	s = FUNC13(res->ai_family, res->ai_socktype, res->ai_protocol);
	if (s == -1)
		FUNC4(EXIT_FAILURE, "socket");
	
	if (FUNC12(s, proto, option, &al, sizeof(al)) == -1)
		FUNC4(EXIT_FAILURE, "setsockopt");

	FUNC9(&ss, 0, sizeof(ss));
	ss.ss_len = res->ai_addrlen;
	ss.ss_family = res->ai_family;

	if (FUNC1(s, (struct sockaddr *)&ss, ss.ss_len) == -1)
		FUNC4(EXIT_FAILURE, "bind");
		
	if (FUNC11(s, hello, sizeof(hello) - 1, 0,
	    res->ai_addr, res->ai_addrlen) == -1)
		FUNC4(EXIT_FAILURE, "sendto");

	if (FUNC2(s) == -1)
		FUNC4(EXIT_FAILURE, "close");

	s = FUNC13(res->ai_family, res->ai_socktype, res->ai_protocol);
	if (s == -1)
		FUNC4(EXIT_FAILURE, "socket");

	if (FUNC12(s, proto, option, &al, sizeof(al)) == -1)
		FUNC4(EXIT_FAILURE, "setsockopt");

	if (FUNC3(s, res->ai_addr, res->ai_addrlen) == -1)
		FUNC4(EXIT_FAILURE, "connect");

	if (FUNC10(s, hello, sizeof(hello) - 1, 0) == -1)
		FUNC4(EXIT_FAILURE, "send");

	if (FUNC2(s) == -1)
		FUNC4(EXIT_FAILURE, "close");

	FUNC6(res);
}