#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ s6_addr; } ;
struct sockaddr_in6 {TYPE_2__ sin6_addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
typedef  scalar_t__ ev_uint32_t ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int had_ipv4_address ; 
 int had_ipv6_address ; 
 int /*<<< orphan*/  FUNC3 (unsigned char const*,char const*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(const struct sockaddr *sa)
{
	const char ZEROES[] = "\x00\x00\x00\x00\x00\x00\x00\x00"
	    "\x00\x00\x00\x00\x00\x00\x00\x00";

	if (sa->sa_family == AF_INET) {
		const struct sockaddr_in *sin = (struct sockaddr_in *)sa;
		ev_uint32_t addr = FUNC4(sin->sin_addr.s_addr);
		if (addr == 0 ||
		    FUNC1(addr) ||
		    FUNC0(addr)) {
			/* Not actually a usable external address. */
		} else {
			FUNC2(("Detected an IPv4 interface"));
			had_ipv4_address = 1;
		}
	} else if (sa->sa_family == AF_INET6) {
		const struct sockaddr_in6 *sin6 = (struct sockaddr_in6 *)sa;
		const unsigned char *addr =
		    (unsigned char*)sin6->sin6_addr.s6_addr;
		if (!FUNC3(addr, ZEROES, 8) ||
		    ((addr[0] & 0xfe) == 0xfc) ||
		    (addr[0] == 0xfe && (addr[1] & 0xc0) == 0x80) ||
		    (addr[0] == 0xfe && (addr[1] & 0xc0) == 0xc0) ||
		    (addr[0] == 0xff)) {
			/* This is a reserved, ipv4compat, ipv4map, loopback,
			 * link-local, multicast, or unspecified address. */
		} else {
			FUNC2(("Detected an IPv6 interface"));
			had_ipv6_address = 1;
		}
	}
}