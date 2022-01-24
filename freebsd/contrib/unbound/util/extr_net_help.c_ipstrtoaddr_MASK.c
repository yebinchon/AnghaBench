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
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ uint16_t ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {int /*<<< orphan*/  sin_addr; scalar_t__ sin_family; void* sin_port; int /*<<< orphan*/  sin6_addr; scalar_t__ sin6_family; scalar_t__ sin6_scope_id; void* sin6_port; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_addr; scalar_t__ sin_family; void* sin_port; int /*<<< orphan*/  sin6_addr; scalar_t__ sin6_family; scalar_t__ sin6_scope_id; void* sin6_port; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  void* in_port_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int MAX_ADDR_STRLEN ; 
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr_in6*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char const*) ; 
 char* FUNC5 (char const*,char) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int) ; 

int 
FUNC7(const char* ip, int port, struct sockaddr_storage* addr,
	socklen_t* addrlen)
{
	uint16_t p;
	if(!ip) return 0;
	p = (uint16_t) port;
	if(FUNC4(ip)) {
		char buf[MAX_ADDR_STRLEN];
		char* s;
		struct sockaddr_in6* sa = (struct sockaddr_in6*)addr;
		*addrlen = (socklen_t)sizeof(struct sockaddr_in6);
		FUNC3(sa, 0, *addrlen);
		sa->sin6_family = AF_INET6;
		sa->sin6_port = (in_port_t)FUNC1(p);
		if((s=FUNC5(ip, '%'))) { /* ip6%interface, rfc 4007 */
			if(s-ip >= MAX_ADDR_STRLEN)
				return 0;
			(void)FUNC6(buf, ip, sizeof(buf));
			buf[s-ip]=0;
			sa->sin6_scope_id = (uint32_t)FUNC0(s+1);
			ip = buf;
		}
		if(FUNC2((int)sa->sin6_family, ip, &sa->sin6_addr) <= 0) {
			return 0;
		}
	} else { /* ip4 */
		struct sockaddr_in* sa = (struct sockaddr_in*)addr;
		*addrlen = (socklen_t)sizeof(struct sockaddr_in);
		FUNC3(sa, 0, *addrlen);
		sa->sin_family = AF_INET;
		sa->sin_port = (in_port_t)FUNC1(p);
		if(FUNC2((int)sa->sin_family, ip, &sa->sin_addr) <= 0) {
			return 0;
		}
	}
	return 1;
}