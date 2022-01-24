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
typedef  int u_char ;
struct ip {int ip_p; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int const,int const) ; 

__attribute__((used)) static void
FUNC2(struct ip *ip, const u_char *cp)
{
	FUNC0(ip);

	if (ip->ip_p == 6)
		(void)FUNC1("TCP: from port %u, to port %u (decimal)\n",
		    (*cp * 256 + *(cp + 1)), (*(cp + 2) * 256 + *(cp + 3)));
	else if (ip->ip_p == 17)
		(void)FUNC1("UDP: from port %u, to port %u (decimal)\n",
			(*cp * 256 + *(cp + 1)), (*(cp + 2) * 256 + *(cp + 3)));
}