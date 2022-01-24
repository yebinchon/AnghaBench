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
struct evutil_addrinfo {int ai_addrlen; struct sockaddr* ai_addr; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; } ;
typedef  int /*<<< orphan*/  strport ;
typedef  int evutil_socket_t ;
typedef  int /*<<< orphan*/  ev_uint16_t ;
typedef  int /*<<< orphan*/  ai ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 scalar_t__ EINPROGRESS ; 
 int NI_MAXSERV ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int WSAEINPROGRESS ; 
 int WSAEINVAL ; 
 int WSAEWOULDBLOCK ; 
 int FUNC0 () ; 
 int FUNC1 (int,struct sockaddr*,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct evutil_addrinfo*) ; 
 scalar_t__ FUNC5 (char const*,char*,struct evutil_addrinfo*,struct evutil_addrinfo**) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct evutil_addrinfo*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static evutil_socket_t
FUNC10(const char *address, ev_uint16_t port)
{
	/* Stupid code for connecting */
	struct evutil_addrinfo ai, *aitop;
	char strport[NI_MAXSERV];

	struct sockaddr *sa;
	int slen;
	evutil_socket_t fd;

	FUNC8(&ai, 0, sizeof(ai));
	ai.ai_family = AF_INET;
	ai.ai_socktype = SOCK_STREAM;
	FUNC7(strport, sizeof(strport), "%d", port);
	if (FUNC5(address, strport, &ai, &aitop) != 0) {
		FUNC3("getaddrinfo");
		return (-1);
	}
	sa = aitop->ai_addr;
	slen = aitop->ai_addrlen;

	fd = FUNC9(AF_INET, SOCK_STREAM, 0);
	if (fd == -1)
		FUNC2(1, "socket failed");

	FUNC6(fd);
	if (FUNC1(fd, sa, slen) == -1) {
#ifdef _WIN32
		int tmp_err = WSAGetLastError();
		if (tmp_err != WSAEINPROGRESS && tmp_err != WSAEINVAL &&
		    tmp_err != WSAEWOULDBLOCK)
			event_err(1, "connect failed");
#else
		if (errno != EINPROGRESS)
			FUNC2(1, "connect failed");
#endif
	}

	FUNC4(aitop);

	return (fd);
}