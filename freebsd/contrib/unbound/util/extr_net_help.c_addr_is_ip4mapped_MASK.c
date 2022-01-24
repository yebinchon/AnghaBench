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
typedef  int uint8_t ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; } ;
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sockaddr_storage*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int*,int const*,int) ; 

int 
FUNC2(struct sockaddr_storage* addr, socklen_t addrlen)
{
	/* prefix for ipv4 into ipv6 mapping is ::ffff:x.x.x.x */
	const uint8_t map_prefix[16] = 
		{0,0,0,0,  0,0,0,0, 0,0,0xff,0xff, 0,0,0,0};
	uint8_t* s;
	if(!FUNC0(addr, addrlen))
		return 0;
	/* s is 16 octet ipv6 address string */
	s = (uint8_t*)&((struct sockaddr_in6*)addr)->sin6_addr;
	return (FUNC1(s, map_prefix, 12) == 0);
}