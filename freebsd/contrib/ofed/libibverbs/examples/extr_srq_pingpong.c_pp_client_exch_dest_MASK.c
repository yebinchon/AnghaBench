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
struct pingpong_dest {int lid; int qpn; int psn; int /*<<< orphan*/  gid; } ;
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; struct addrinfo* ai_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int MAX_QP ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 scalar_t__ FUNC0 (char**,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct addrinfo*) ; 
 char* FUNC6 (int) ; 
 int FUNC7 (char const*,char*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 struct pingpong_dest* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int FUNC11 (int,char*,int) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int,int,int,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int*,int*,int*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ *) ; 
 int FUNC16 (int,char*,int) ; 

__attribute__((used)) static struct pingpong_dest *FUNC17(const char *servername, int port,
						 const struct pingpong_dest *my_dest)
{
	struct addrinfo *res, *t;
	struct addrinfo hints = {
		.ai_family   = AF_UNSPEC,
		.ai_socktype = SOCK_STREAM
	};
	char *service;
	char msg[sizeof "0000:000000:000000:00000000000000000000000000000000"];
	int n;
	int r;
	int i;
	int sockfd = -1;
	struct pingpong_dest *rem_dest = NULL;
	char gid[33];

	if (FUNC0(&service, "%d", port) < 0)
		return NULL;

	n = FUNC7(servername, service, &hints, &res);

	if (n < 0) {
		FUNC3(stderr, "%s for %s:%d\n", FUNC6(n), servername, port);
		FUNC4(service);
		return NULL;
	}

	for (t = res; t; t = t->ai_next) {
		sockfd = FUNC12(t->ai_family, t->ai_socktype, t->ai_protocol);
		if (sockfd >= 0) {
			if (!FUNC2(sockfd, t->ai_addr, t->ai_addrlen))
				break;
			FUNC1(sockfd);
			sockfd = -1;
		}
	}

	FUNC5(res);
	FUNC4(service);

	if (sockfd < 0) {
		FUNC3(stderr, "Couldn't connect to %s:%d\n", servername, port);
		return NULL;
	}

	for (i = 0; i < MAX_QP; ++i) {
		FUNC8(&my_dest[i].gid, gid);
		FUNC13(msg, "%04x:%06x:%06x:%s", my_dest[i].lid,
					my_dest[i].qpn, my_dest[i].psn, gid);
		if (FUNC16(sockfd, msg, sizeof msg) != sizeof msg) {
			FUNC3(stderr, "Couldn't send local address\n");
			goto out;
		}
	}

	rem_dest = FUNC9(MAX_QP * sizeof *rem_dest);
	if (!rem_dest)
		goto out;

	for (i = 0; i < MAX_QP; ++i) {
		n = 0;
		while (n < sizeof msg) {
			r = FUNC11(sockfd, msg + n, sizeof msg - n);
			if (r < 0) {
				FUNC10("client read");
				FUNC3(stderr, "%d/%d: Couldn't read remote address [%d]\n",
					n, (int) sizeof msg, i);
				goto out;
			}
			n += r;
		}

		FUNC14(msg, "%x:%x:%x:%s", &rem_dest[i].lid, &rem_dest[i].qpn,
							&rem_dest[i].psn, gid);
		FUNC15(gid, &rem_dest[i].gid);
	}

	if (FUNC16(sockfd, "done", sizeof "done") != sizeof "done") {
		FUNC10("client write");
		goto out;
	}
out:
	FUNC1(sockfd);
	return rem_dest;
}