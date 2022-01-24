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
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct addrinfo {scalar_t__ ai_family; int /*<<< orphan*/  ai_addr; } ;

/* Variables and functions */
 scalar_t__ PF_INET ; 
 scalar_t__ PF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (struct addrinfo*) ; 
 char* FUNC1 (int) ; 
 int FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static int FUNC5(char *dst, struct sockaddr *addr)
{
	struct addrinfo *res;
	int ret;

	ret = FUNC2(dst, NULL, NULL, &res);
	if (ret) {
		FUNC4("getaddrinfo failed (%s) - invalid hostname or IP address\n", FUNC1(ret));
		return ret;
	}

	if (res->ai_family == PF_INET)
		FUNC3(addr, res->ai_addr, sizeof(struct sockaddr_in));
	else if (res->ai_family == PF_INET6)
		FUNC3(addr, res->ai_addr, sizeof(struct sockaddr_in6));
	else
		ret = -1;
	
	FUNC0(res);
	return ret;
}