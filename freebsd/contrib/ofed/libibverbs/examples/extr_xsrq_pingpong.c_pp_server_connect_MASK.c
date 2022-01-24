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
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; struct addrinfo* ai_next; int /*<<< orphan*/  ai_flags; } ;
struct TYPE_2__ {int num_clients; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AI_PASSIVE ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 int FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char**,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 TYPE_1__ ctx ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct addrinfo*) ; 
 char* FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ *,char*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 
 scalar_t__ FUNC11 (int,int) ; 
 scalar_t__ FUNC12 (int,int) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC15(int port)
{
	struct addrinfo *res, *t;
	char *service;
	int ret, i, n;
	int sockfd = -1, connfd;
	struct addrinfo hints = {
		.ai_flags    = AI_PASSIVE,
		.ai_family   = AF_INET,
		.ai_socktype = SOCK_STREAM
	};

	if (FUNC1(&service, "%d", port) < 0)
		return 1;

	ret = FUNC9(NULL, service, &hints, &res);
	if (ret < 0) {
		FUNC5(stderr, "%s for port %d\n", FUNC8(ret), port);
		FUNC6(service);
		return 1;
	}

	for (t = res; t; t = t->ai_next) {
		sockfd = FUNC14(t->ai_family, t->ai_socktype, t->ai_protocol);
		if (sockfd >= 0) {
			n = 1;
			FUNC13(sockfd, SOL_SOCKET, SO_REUSEADDR, &n, sizeof n);
			if (!FUNC2(sockfd, t->ai_addr, t->ai_addrlen))
				break;
			FUNC3(sockfd);
			sockfd = -1;
		}
	}

	FUNC7(res);
	FUNC6(service);

	if (sockfd < 0) {
		FUNC5(stderr, "Couldn't listen to port %d\n", port);
		return 1;
	}

	FUNC10(sockfd, ctx.num_clients);

	for (i = 0; i < ctx.num_clients; i++) {
		connfd = FUNC0(sockfd, NULL, NULL);
		if (connfd < 0) {
			FUNC5(stderr, "accept() failed for client %d\n", i);
			return 1;
		}

		if (FUNC11(connfd, i))
			return 1;

		if (FUNC12(connfd, i))
			return 1;

		if (FUNC4(i))
			return 1;
	}

	FUNC3(sockfd);
	return 0;
}