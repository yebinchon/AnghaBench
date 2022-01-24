#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct rdma_addrinfo {int /*<<< orphan*/  ai_dst_len; int /*<<< orphan*/  ai_dst_addr; int /*<<< orphan*/  ai_route_len; scalar_t__ ai_route; int /*<<< orphan*/  ai_src_len; int /*<<< orphan*/  ai_src_addr; int /*<<< orphan*/  ai_family; } ;
struct pollfd {int /*<<< orphan*/  events; void* fd; } ;
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_family; } ;
typedef  int socklen_t ;
struct TYPE_6__ {int /*<<< orphan*/  ai_flags; } ;
struct TYPE_5__ {int /*<<< orphan*/  ai_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AI_PASSIVE ; 
 int EINPROGRESS ; 
 int /*<<< orphan*/  POLLOUT ; 
 int /*<<< orphan*/  RAI_PASSIVE ; 
 int /*<<< orphan*/  RDMA_ROUTE ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_RDMA ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_ERROR ; 
 TYPE_3__ ai_hints ; 
 int FUNC0 (struct pollfd*,int /*<<< orphan*/ ) ; 
 scalar_t__ dst_addr ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (struct addrinfo*) ; 
 char* FUNC2 (int) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ ,TYPE_3__*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  poll_timeout ; 
 int /*<<< orphan*/  port ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 TYPE_1__ rai_hints ; 
 int /*<<< orphan*/  FUNC6 (struct rdma_addrinfo*) ; 
 int FUNC7 (scalar_t__,int /*<<< orphan*/ ,TYPE_1__*,struct rdma_addrinfo**) ; 
 void* rs ; 
 int FUNC8 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 int FUNC10 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC12 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 void* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (void*) ; 
 scalar_t__ src_addr ; 
 scalar_t__ use_rgai ; 

__attribute__((used)) static int FUNC15(void)
{
	struct rdma_addrinfo *rai = NULL, *rai_src = NULL;
	struct addrinfo *ai, *ai_src;
	struct pollfd fds;
	int ret, err;
	socklen_t len;

	ret = use_rgai ? FUNC7(dst_addr, port, &rai_hints, &rai) :
			 FUNC3(dst_addr, port, &ai_hints, &ai);

	if (ret) {
		FUNC5("getaddrinfo: %s\n", FUNC2(ret));
		return ret;
	}

	if (src_addr) {
		if (use_rgai) {
			rai_hints.ai_flags |= RAI_PASSIVE;
			ret = FUNC7(src_addr, port, &rai_hints, &rai_src);
		} else {
			ai_hints.ai_flags |= AI_PASSIVE;
			ret = FUNC3(src_addr, port, &ai_hints, &ai_src);
		}
		if (ret) {
			FUNC5("getaddrinfo src_addr: %s\n", FUNC2(ret));
			return ret;
		}
	}

	rs = rai ? FUNC13(rai->ai_family, SOCK_STREAM, 0) :
		   FUNC13(ai->ai_family, SOCK_STREAM, 0);
	if (rs < 0) {
		FUNC4("rsocket");
		ret = rs;
		goto free;
	}

	FUNC14(rs);

	if (src_addr) {
		ret = rai ? FUNC8(rs, rai_src->ai_src_addr, rai_src->ai_src_len) :
			    FUNC8(rs, ai_src->ai_addr, ai_src->ai_addrlen);
		if (ret) {
			FUNC4("rbind");
			goto close;
		}
	}

	if (rai && rai->ai_route) {
		ret = FUNC12(rs, SOL_RDMA, RDMA_ROUTE, rai->ai_route,
				    rai->ai_route_len);
		if (ret) {
			FUNC4("rsetsockopt RDMA_ROUTE");
			goto close;
		}
	}

	ret = rai ? FUNC10(rs, rai->ai_dst_addr, rai->ai_dst_len) :
		    FUNC10(rs, ai->ai_addr, ai->ai_addrlen);
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
		ret = FUNC11(rs, SOL_SOCKET, SO_ERROR, &err, &len);
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
		FUNC9(rs);
free:
	if (rai)
		FUNC6(rai);
	else
		FUNC1(ai);
	return ret;
}