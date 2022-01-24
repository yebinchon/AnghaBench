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
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  dst_addr ; 
 int /*<<< orphan*/  FUNC0 (struct addrinfo*) ; 
 char* FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  port ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(void)
{
	struct addrinfo *res;
	int ret, rs;

 	ret = FUNC2(dst_addr, port, NULL, &res);
	if (ret) {
		FUNC4("getaddrinfo failed: %s\n", FUNC1(ret));
		return ret;
	}

	rs = FUNC7(res->ai_family, res->ai_socktype, res->ai_protocol);
	if (rs < 0) {
		FUNC3("rsocket failed\n");
		goto free;
	}

	ret = FUNC6(rs, res->ai_addr, res->ai_addrlen);
	if (ret) {
		FUNC3("rconnect failed\n");
		FUNC5(rs);
		rs = ret;
	}

free:
	FUNC0(res);
	return rs;
}