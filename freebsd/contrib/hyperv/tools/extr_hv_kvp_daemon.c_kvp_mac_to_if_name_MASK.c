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
struct sockaddr_dl {scalar_t__ sdl_type; } ;
struct ifaddrs {int /*<<< orphan*/  ifa_name; scalar_t__ ifa_addr; struct ifaddrs* ifa_next; } ;
struct ether_addr {int dummy; } ;

/* Variables and functions */
 scalar_t__ IFT_ETHER ; 
 scalar_t__ FUNC0 (struct sockaddr_dl*) ; 
 int /*<<< orphan*/  FUNC1 (struct ether_addr*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifaddrs*) ; 
 int FUNC4 (struct ifaddrs**) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,char*,int /*<<< orphan*/ ) ; 
 char FUNC8 (char) ; 

__attribute__((used)) static char *
FUNC9(char *mac)
{
	char *if_name = NULL;
	struct ifaddrs *ifaddrs_ptr;
	struct ifaddrs *head_ifaddrs_ptr;
	struct sockaddr_dl *sdl;
	int status;
	char *buf_ptr, *p;

	status = FUNC4(&ifaddrs_ptr);

	if (status >= 0) {
		head_ifaddrs_ptr = ifaddrs_ptr;
		do {
			sdl = (struct sockaddr_dl *)(uintptr_t)ifaddrs_ptr->ifa_addr;
			if (sdl->sdl_type == IFT_ETHER) {
				buf_ptr = FUNC5(FUNC1((struct ether_addr *)(FUNC0(sdl))));
				if (buf_ptr != NULL) {
					for (p = buf_ptr; *p != '\0'; p++)
						*p = FUNC8(*p);

					if (FUNC7(buf_ptr, mac, FUNC6(mac)) == 0) {
						/* Caller will free the memory */
						if_name = FUNC5(ifaddrs_ptr->ifa_name);
						FUNC2(buf_ptr);
						break;
					} else
						FUNC2(buf_ptr);
				}
			}
		} while ((ifaddrs_ptr = ifaddrs_ptr->ifa_next) != NULL);
		FUNC3(head_ifaddrs_ptr);
	}
	return (if_name);
}