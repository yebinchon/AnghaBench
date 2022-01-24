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
struct rdma_addrinfo {int /*<<< orphan*/  ai_src_len; int /*<<< orphan*/  ai_src_addr; int /*<<< orphan*/  ai_family; } ;
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_family; } ;
struct TYPE_6__ {int /*<<< orphan*/  ai_flags; } ;
struct TYPE_5__ {int /*<<< orphan*/  ai_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AI_PASSIVE ; 
 int /*<<< orphan*/  RAI_PASSIVE ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 TYPE_3__ ai_hints ; 
 int /*<<< orphan*/  FUNC0 (struct addrinfo*) ; 
 char* FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,struct addrinfo**) ; 
 int lrs ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  port ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 TYPE_1__ rai_hints ; 
 int /*<<< orphan*/  FUNC5 (struct rdma_addrinfo*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,struct rdma_addrinfo**) ; 
 int FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int,int) ; 
 int FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  src_addr ; 
 scalar_t__ use_rgai ; 

__attribute__((used)) static int FUNC12(void)
{
	struct rdma_addrinfo *rai = NULL;
	struct addrinfo *ai;
	int val, ret;

	if (use_rgai) {
		rai_hints.ai_flags |= RAI_PASSIVE;
		ret = FUNC6(src_addr, port, &rai_hints, &rai);
	} else {
		ai_hints.ai_flags |= AI_PASSIVE;
		ret = FUNC2(src_addr, port, &ai_hints, &ai);
	}
	if (ret) {
		FUNC4("getaddrinfo: %s\n", FUNC1(ret));
		return ret;
	}

	lrs = rai ? FUNC11(rai->ai_family, SOCK_STREAM, 0) :
		    FUNC11(ai->ai_family, SOCK_STREAM, 0);
	if (lrs < 0) {
		FUNC3("rsocket");
		ret = lrs;
		goto free;
	}

	val = 1;
	ret = FUNC10(lrs, SOL_SOCKET, SO_REUSEADDR, &val, sizeof val);
	if (ret) {
		FUNC3("rsetsockopt SO_REUSEADDR");
		goto close;
	}

	ret = rai ? FUNC7(lrs, rai->ai_src_addr, rai->ai_src_len) :
		    FUNC7(lrs, ai->ai_addr, ai->ai_addrlen);
	if (ret) {
		FUNC3("rbind");
		goto close;
	}

	ret = FUNC9(lrs, 1);
	if (ret)
		FUNC3("rlisten");

close:
	if (ret)
		FUNC8(lrs);
free:
	if (rai)
		FUNC5(rai);
	else
		FUNC0(ai);
	return ret;
}