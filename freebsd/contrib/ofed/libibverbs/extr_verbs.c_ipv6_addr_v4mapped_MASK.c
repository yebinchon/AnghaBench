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
struct in6_addr {unsigned long* s6_addr32; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct in6_addr const*) ; 
 unsigned long FUNC1 (int) ; 

__attribute__((used)) static inline int FUNC2(const struct in6_addr *a)
{
	return FUNC0(a) ||
		/* IPv4 encoded multicast addresses */
		(a->s6_addr32[0]  == FUNC1(0xff0e0000) &&
		((a->s6_addr32[1] |
		 (a->s6_addr32[2] ^ FUNC1(0x0000ffff))) == 0UL));
}