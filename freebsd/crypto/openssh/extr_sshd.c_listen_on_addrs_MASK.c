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
struct listenaddr {char* rdomain; struct addrinfo* addrs; } ;
struct addrinfo {scalar_t__ ai_family; int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; struct addrinfo* ai_next; } ;
typedef  int /*<<< orphan*/  strport ;
typedef  int /*<<< orphan*/  socksize ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  ntop ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  FD_CLOEXEC ; 
 int /*<<< orphan*/  F_SETFD ; 
 size_t MAX_LISTEN_SOCKS ; 
 int NI_MAXHOST ; 
 int NI_MAXSERV ; 
 int NI_NUMERICHOST ; 
 int NI_NUMERICSERV ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_RCVBUF ; 
 int /*<<< orphan*/  SSH_LISTEN_BACKLOG ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ) ; 
 int* listen_socks ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,char*,char*,char*) ; 
 size_t num_listen_socks ; 
 int FUNC10 (int) ; 
 int FUNC11 (int,char*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int FUNC14 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC18(struct listenaddr *la)
{
	int ret, listen_sock;
	struct addrinfo *ai;
	char ntop[NI_MAXHOST], strport[NI_MAXSERV];
	int socksize;
	socklen_t len;

	for (ai = la->addrs; ai; ai = ai->ai_next) {
		if (ai->ai_family != AF_INET && ai->ai_family != AF_INET6)
			continue;
		if (num_listen_socks >= MAX_LISTEN_SOCKS)
			FUNC4("Too many listen sockets. "
			    "Enlarge MAX_LISTEN_SOCKS");
		if ((ret = FUNC6(ai->ai_addr, ai->ai_addrlen,
		    ntop, sizeof(ntop), strport, sizeof(strport),
		    NI_NUMERICHOST|NI_NUMERICSERV)) != 0) {
			FUNC3("getnameinfo failed: %.100s",
			    FUNC15(ret));
			continue;
		}
		/* Create socket for listening. */
		listen_sock = FUNC14(ai->ai_family, ai->ai_socktype,
		    ai->ai_protocol);
		if (listen_sock < 0) {
			/* kernel may not support ipv6 */
			FUNC17("socket: %.100s", FUNC16(errno));
			continue;
		}
		if (FUNC10(listen_sock) == -1) {
			FUNC1(listen_sock);
			continue;
		}
		if (FUNC5(listen_sock, F_SETFD, FD_CLOEXEC) == -1) {
			FUNC17("socket: CLOEXEC: %s", FUNC16(errno));
			FUNC1(listen_sock);
			continue;
		}
		/* Socket options */
		FUNC12(listen_sock);
		if (la->rdomain != NULL &&
		    FUNC11(listen_sock, la->rdomain) == -1) {
			FUNC1(listen_sock);
			continue;
		}

		/* Only communicate in IPv6 over AF_INET6 sockets. */
		if (ai->ai_family == AF_INET6)
			FUNC13(listen_sock);

		FUNC2("Bind to port %s on %s.", strport, ntop);

		len = sizeof(socksize);
		FUNC7(listen_sock, SOL_SOCKET, SO_RCVBUF, &socksize, &len);
		FUNC2("Server TCP RWIN socket size: %d", socksize);

		/* Bind the socket to the desired port. */
		if (FUNC0(listen_sock, ai->ai_addr, ai->ai_addrlen) < 0) {
			FUNC3("Bind to port %s on %s failed: %.200s.",
			    strport, ntop, FUNC16(errno));
			FUNC1(listen_sock);
			continue;
		}
		listen_socks[num_listen_socks] = listen_sock;
		num_listen_socks++;

		/* Start listening on the port. */
		if (FUNC8(listen_sock, SSH_LISTEN_BACKLOG) < 0)
			FUNC4("listen on [%s]:%s: %.100s",
			    ntop, strport, FUNC16(errno));
		FUNC9("Server listening on %s port %s%s%s.",
		    ntop, strport,
		    la->rdomain == NULL ? "" : " rdomain ",
		    la->rdomain == NULL ? "" : la->rdomain);
	}
}