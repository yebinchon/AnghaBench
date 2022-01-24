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
struct rdma_addrinfo {int /*<<< orphan*/  ai_dst_len; int /*<<< orphan*/  ai_dst_addr; int /*<<< orphan*/  ai_family; } ;
struct pollfd {int /*<<< orphan*/  events; void* fd; } ;
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_family; } ;
typedef  int socklen_t ;

/* Variables and functions */
 int EINPROGRESS ; 
 int /*<<< orphan*/  POLLOUT ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_ERROR ; 
 int /*<<< orphan*/  ai_hints ; 
 int FUNC0 (struct pollfd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dst_addr ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (struct addrinfo*) ; 
 char* FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  poll_timeout ; 
 int /*<<< orphan*/  port ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  rai_hints ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int FUNC7 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rdma_addrinfo*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct rdma_addrinfo**) ; 
 int FUNC10 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 void* rs ; 
 void* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 
 scalar_t__ use_rgai ; 

__attribute__((used)) static int FUNC13(void)
{
	struct rdma_addrinfo *rai = NULL;
	struct addrinfo *ai;
	struct pollfd fds;
	int ret, err;
	socklen_t len;

	ret = use_rgai ? FUNC9(dst_addr, port, &rai_hints, &rai) :
			 FUNC3(dst_addr, port, &ai_hints, &ai);
	if (ret) {
		FUNC5("getaddrinfo: %s\n", FUNC2(ret));
		return ret;
	}

	rs = rai ? FUNC11(rai->ai_family, SOCK_STREAM, 0) :
		   FUNC11(ai->ai_family, SOCK_STREAM, 0);
	if (rs < 0) {
		FUNC4("rsocket");
		ret = rs;
		goto free;
	}

	FUNC12(rs);
	/* TODO: bind client to src_addr */

	ret = rai ? FUNC7(rs, rai->ai_dst_addr, rai->ai_dst_len) :
		    FUNC7(rs, ai->ai_addr, ai->ai_addrlen);
	if (ret && (errno != EINPROGRESS)) {
		FUNC4("rconnect");
		goto close;
	}

	if (ret && (errno == EINPROGRESS)) {
		fds.fd = rs;
		fds.events = POLLOUT;
		ret = FUNC0(&fds, poll_timeout);
		if (ret) {
			FUNC4("rpoll");
			goto close;
		}

		len = sizeof err;
		ret = FUNC10(rs, SOL_SOCKET, SO_ERROR, &err, &len);
		if (ret)
			goto close;
		if (err) {
			ret = -1;
			errno = err;
			FUNC4("async rconnect");
		}
	}

close:
	if (ret)
		FUNC6(rs);
free:
	if (rai)
		FUNC8(rai);
	else
		FUNC1(ai);
	return ret;
}