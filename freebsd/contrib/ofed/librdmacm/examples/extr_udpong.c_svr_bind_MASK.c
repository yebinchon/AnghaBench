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
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (struct addrinfo*) ; 
 char* FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC3 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  port ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int rs ; 
 int FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  src_addr ; 

__attribute__((used)) static int FUNC10(void)
{
	struct addrinfo hints, *res;
	int ret;

	FUNC3(&hints, 0, sizeof hints);
	hints.ai_socktype = SOCK_DGRAM;
 	ret = FUNC2(src_addr, port, &hints, &res);
	if (ret) {
		FUNC5("getaddrinfo: %s\n", FUNC1(ret));
		return ret;
	}

	rs = FUNC8(res->ai_family, res->ai_socktype, res->ai_protocol);
	if (rs < 0) {
		FUNC4("rsocket");
		ret = rs;
		goto out;
	}

	FUNC9(rs);
	ret = FUNC6(rs, res->ai_addr, res->ai_addrlen);
	if (ret) {
		FUNC4("rbind");
		FUNC7(rs);
	}

out:
	FUNC0(res);
	return ret;
}