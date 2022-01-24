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
typedef  int /*<<< orphan*/  uint16_t ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; void* sin6_port; int /*<<< orphan*/  sin6_family; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_addr; void* sin_port; int /*<<< orphan*/  sin_family; } ;
struct ip_list {void* len; int /*<<< orphan*/  addr; } ;
typedef  void* socklen_t ;
typedef  void* in_port_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int LDNS_RR_TYPE_A ; 
 int LDNS_RR_TYPE_AAAA ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_list*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ verb ; 
 int /*<<< orphan*/  FUNC5 (char*,struct ip_list*) ; 

__attribute__((used)) static struct ip_list*
FUNC6(int tp, char* data, int len, int port)
{
	struct ip_list* ip = (struct ip_list*)FUNC0(1, sizeof(*ip));
	uint16_t p = (uint16_t)port;
	if(tp == LDNS_RR_TYPE_A) {
		struct sockaddr_in* sa = (struct sockaddr_in*)&ip->addr;
		ip->len = (socklen_t)sizeof(*sa);
		sa->sin_family = AF_INET;
		sa->sin_port = (in_port_t)FUNC2(p);
		if(len != (int)sizeof(sa->sin_addr)) {
			if(verb) FUNC4("skipped badly formatted A\n");
			FUNC1(ip);
			return NULL;
		}
		FUNC3(&sa->sin_addr, data, sizeof(sa->sin_addr));

	} else if(tp == LDNS_RR_TYPE_AAAA) {
		struct sockaddr_in6* sa = (struct sockaddr_in6*)&ip->addr;
		ip->len = (socklen_t)sizeof(*sa);
		sa->sin6_family = AF_INET6;
		sa->sin6_port = (in_port_t)FUNC2(p);
		if(len != (int)sizeof(sa->sin6_addr)) {
			if(verb) FUNC4("skipped badly formatted AAAA\n");
			FUNC1(ip);
			return NULL;
		}
		FUNC3(&sa->sin6_addr, data, sizeof(sa->sin6_addr));
	} else {
		if(verb) FUNC4("internal error: bad type in RRtoip\n");
		FUNC1(ip);
		return NULL;
	}
	FUNC5("resolved server address", ip);
	return ip;
}