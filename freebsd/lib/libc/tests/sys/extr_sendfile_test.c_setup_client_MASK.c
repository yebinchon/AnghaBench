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
struct sockaddr {int dummy; } ;
struct addrinfo {int ai_family; int ai_socktype; int /*<<< orphan*/  ai_addrlen; scalar_t__ ai_addr; int /*<<< orphan*/  ai_protocol; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NI_MAXHOST ; 
 int /*<<< orphan*/  NI_NUMERICHOST ; 
 int FUNC1 (int,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct sockaddr const*,int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct addrinfo**,int,int,int) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(int domain, int type, int port)
{
	struct addrinfo *res;
	char host[NI_MAXHOST+1];
	int error, sock;

	FUNC9(&res, domain, type, port);
	error = FUNC5(
	    (const struct sockaddr*)res->ai_addr, res->ai_addrlen,
	    host, FUNC7(host) - 1, NULL, 0, NI_NUMERICHOST);
	FUNC0(error, 0,
	    "getnameinfo failed: %s", FUNC4(error));
	FUNC8(
	    "Will try to connect to host='%s', address_family=%d, "
	    "socket_type=%d\n",
	    host, res->ai_family, res->ai_socktype);
	/* Avoid a double print when forked by flushing. */
	FUNC2(stdout);
	sock = FUNC6(res->ai_family, res->ai_socktype, res->ai_protocol);
	error = FUNC1(sock, (struct sockaddr*)res->ai_addr, res->ai_addrlen);
	FUNC3(res);
	FUNC0(error, 0, "connect failed: %s", FUNC10(errno));
	return (sock);
}