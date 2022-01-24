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
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; int /*<<< orphan*/  ai_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  RAI_PASSIVE ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 int /*<<< orphan*/  FUNC0 (struct addrinfo*) ; 
 char* FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC3 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  port ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int,int) ; 
 int FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(void)
{
	struct addrinfo hints, *res;
	int ret, rs;

	FUNC3(&hints, 0, sizeof hints);
	hints.ai_flags = RAI_PASSIVE;
 	ret = FUNC2(NULL, port, &hints, &res);
	if (ret) {
		FUNC5("getaddrinfo failed: %s\n", FUNC1(ret));
		return ret;
	}

	rs = FUNC10(res->ai_family, res->ai_socktype, res->ai_protocol);
	if (rs < 0) {
		FUNC4("rsocket failed\n");
		ret = rs;
		goto free;
	}

	ret = 1;
	ret = FUNC9(rs, SOL_SOCKET, SO_REUSEADDR, &ret, sizeof ret);
	if (ret) {
		FUNC4("rsetsockopt failed");
		goto close;
	}

	ret = FUNC6(rs, res->ai_addr, res->ai_addrlen);
	if (ret) {
		FUNC4("rbind failed");
		goto close;
	}

	ret = FUNC8(rs, 1);
	if (ret) {
		FUNC4("rlisten failed");
		goto close;
	}

	ret = rs;
	goto free;

close:
	FUNC7(rs);
free:
	FUNC0(res);
	return ret;
}