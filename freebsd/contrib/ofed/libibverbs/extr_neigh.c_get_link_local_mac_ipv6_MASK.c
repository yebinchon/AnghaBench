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
struct nl_addr {int dummy; } ;
typedef  int /*<<< orphan*/  mac_addr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_LLC ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int*,int*,int) ; 
 struct nl_addr* FUNC1 (int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC2 (struct nl_addr*) ; 

__attribute__((used)) static int FUNC3(struct nl_addr *dst,
				   struct nl_addr **ll_addr)
{
	uint8_t mac_addr[6];

	FUNC0(mac_addr + 3, (uint8_t *)FUNC2(dst) + 13, 3);
	FUNC0(mac_addr, (uint8_t *)FUNC2(dst) + 8, 3);
	mac_addr[0] ^= 2;

	*ll_addr = FUNC1(AF_LLC, mac_addr, sizeof(mac_addr));
	return *ll_addr == NULL ? -EINVAL : 0;
}