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
typedef  int uint32_t ;
struct nl_addr {int dummy; } ;
typedef  int /*<<< orphan*/  mac_addr ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  AF_LLC ; 
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct nl_addr* FUNC1 (int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC2 (struct nl_addr*) ; 

__attribute__((used)) static int FUNC3(struct nl_addr *dst, struct nl_addr **ll_addr)
{
	uint8_t mac_addr[6] = {0x01, 0x00, 0x5E};
	uint32_t addr = FUNC0(*(__be32 *)FUNC2(dst));

	mac_addr[5] = addr & 0xFF;
	addr >>= 8;
	mac_addr[4] = addr & 0xFF;
	addr >>= 8;
	mac_addr[3] = addr & 0x7F;

	*ll_addr = FUNC1(AF_LLC, mac_addr, sizeof(mac_addr));

	return *ll_addr == NULL ? -EINVAL : 0;
}