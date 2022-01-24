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
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; struct addrinfo* ai_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 scalar_t__ FUNC0 (char**,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct addrinfo*) ; 
 char* FUNC7 (int) ; 
 int FUNC8 (char const*,char*,struct addrinfo*,struct addrinfo**) ; 
 scalar_t__ FUNC9 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC12(const char *servername, int port)
{
	struct addrinfo *res, *t;
	char *service;
	int ret;
	int sockfd = -1;
	struct addrinfo hints = {
		.ai_family   = AF_UNSPEC,
		.ai_socktype = SOCK_STREAM
	};

	if (FUNC0(&service, "%d", port) < 0)
		return 1;

	ret = FUNC8(servername, service, &hints, &res);
	if (ret < 0) {
		FUNC4(stderr, "%s for %s:%d\n", FUNC7(ret), servername, port);
		FUNC5(service);
		return 1;
	}

	for (t = res; t; t = t->ai_next) {
		sockfd = FUNC11(t->ai_family, t->ai_socktype, t->ai_protocol);
		if (sockfd >= 0) {
			if (!FUNC2(sockfd, t->ai_addr, t->ai_addrlen))
				break;
			FUNC1(sockfd);
			sockfd = -1;
		}
	}

	FUNC6(res);
	FUNC5(service);

	if (sockfd < 0) {
		FUNC4(stderr, "Couldn't connect to %s:%d\n", servername, port);
		return 1;
	}

	if (FUNC10(sockfd, 0))
		return 1;

	if (FUNC9(sockfd, 0))
		return 1;

	if (FUNC3(0))
		return 1;

	return 0;
}