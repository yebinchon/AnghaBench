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
struct sockaddr_dl {scalar_t__ sdl_alen; scalar_t__ sdl_type; scalar_t__ sdl_nlen; } ;
struct ifaddrs {scalar_t__ ifa_addr; } ;
struct ether_addr {int dummy; } ;
typedef  int /*<<< orphan*/  ifconfig_handle_t ;

/* Variables and functions */
 scalar_t__ ETHER_ADDR_LEN ; 
 scalar_t__ IFT_BRIDGE ; 
 scalar_t__ IFT_ETHER ; 
 scalar_t__ IFT_L2VLAN ; 
 scalar_t__ FUNC0 (struct sockaddr_dl*) ; 
 int NI_MAXHOST ; 
 int /*<<< orphan*/  FUNC1 (struct ether_addr*,char*) ; 
 char* FUNC2 (struct sockaddr_dl*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static void
FUNC4(ifconfig_handle_t *lifh, struct ifaddrs *ifa)
{
	char addr_buf[NI_MAXHOST];
	struct sockaddr_dl *sdl;
	int n;

	sdl = (struct sockaddr_dl *)ifa->ifa_addr;
	if ((sdl != NULL) && (sdl->sdl_alen > 0)) {
		if (((sdl->sdl_type == IFT_ETHER) ||
		    (sdl->sdl_type == IFT_L2VLAN) ||
		    (sdl->sdl_type == IFT_BRIDGE)) &&
		    (sdl->sdl_alen == ETHER_ADDR_LEN)) {
			FUNC1((struct ether_addr *)FUNC0(sdl),
			    addr_buf);
			FUNC3("\tether %s\n", addr_buf);
		} else {
			n = sdl->sdl_nlen > 0 ? sdl->sdl_nlen + 1 : 0;

			FUNC3("\tlladdr %s\n", FUNC2(sdl) + n);
		}
	}
}