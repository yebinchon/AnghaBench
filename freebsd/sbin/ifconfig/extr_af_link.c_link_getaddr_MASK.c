#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_dl {int sdl_len; int sdl_alen; int* sdl_data; void* sdl_family; scalar_t__ sdl_nlen; } ;
struct sockaddr {int sa_len; int /*<<< orphan*/  sa_data; void* sa_family; } ;
typedef  int /*<<< orphan*/  sdl ;
struct TYPE_2__ {struct sockaddr ifr_addr; } ;

/* Variables and functions */
 int ADDR ; 
 void* AF_LINK ; 
 int ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr_dl*) ; 
 int /*<<< orphan*/  FUNC1 (int**,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct sockaddr_dl*) ; 
 TYPE_1__ link_ridreq ; 
 char* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 
 scalar_t__ FUNC9 (char const*) ; 

__attribute__((used)) static void
FUNC10(const char *addr, int which)
{
	char *temp;
	struct sockaddr_dl sdl;
	struct sockaddr *sa = &link_ridreq.ifr_addr;

	if (which != ADDR)
		FUNC3(1, "can't set link-level netmask or broadcast");
	if (!FUNC7(addr, "random")) {
		sdl.sdl_len = sizeof(sdl);
		sdl.sdl_alen = ETHER_ADDR_LEN;
		sdl.sdl_nlen = 0;
		sdl.sdl_family = AF_LINK;
		FUNC1(&sdl.sdl_data, ETHER_ADDR_LEN);
		/* Non-multicast and claim it is locally administered. */
		sdl.sdl_data[0] &= 0xfc;
		sdl.sdl_data[0] |= 0x02;
	} else {
		if ((temp = FUNC6(FUNC9(addr) + 2)) == NULL)
			FUNC3(1, "malloc failed");
		temp[0] = ':';
		FUNC8(temp + 1, addr);
		sdl.sdl_len = sizeof(sdl);
		FUNC5(temp, &sdl);
		FUNC4(temp);
	}
	if (sdl.sdl_alen > sizeof(sa->sa_data))
		FUNC3(1, "malformed link-level address");
	sa->sa_family = AF_LINK;
	sa->sa_len = sdl.sdl_alen;
	FUNC2(FUNC0(&sdl), sa->sa_data, sdl.sdl_alen);
}