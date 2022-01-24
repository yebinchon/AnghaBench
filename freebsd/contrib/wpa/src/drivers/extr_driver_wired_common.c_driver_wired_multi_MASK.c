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
typedef  int /*<<< orphan*/  u8 ;
struct sockaddr_dl {int sdl_len; scalar_t__ sdl_slen; int /*<<< orphan*/  sdl_alen; scalar_t__ sdl_nlen; scalar_t__ sdl_index; int /*<<< orphan*/  sdl_family; } ;
struct sockaddr {int sa_len; int /*<<< orphan*/  sa_data; void* sa_family; } ;
struct TYPE_2__ {int /*<<< orphan*/  sa_data; void* sa_family; } ;
struct ifreq {int /*<<< orphan*/  ifr_addr; TYPE_1__ ifr_hwaddr; int /*<<< orphan*/  ifr_name; } ;
typedef  int /*<<< orphan*/  ifr ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_LINK ; 
 void* AF_UNSPEC ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr_dl*) ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SIOCADDMULTI ; 
 int /*<<< orphan*/  SIOCDELMULTI ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ifreq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(const char *ifname, const u8 *addr, int add)
{
	struct ifreq ifr;
	int s;

#ifdef __sun__
	return -1;
#endif /* __sun__ */

	s = FUNC6(PF_INET, SOCK_DGRAM, 0);
	if (s < 0) {
		FUNC8(MSG_ERROR, "socket: %s", FUNC7(errno));
		return -1;
	}

	FUNC4(&ifr, 0, sizeof(ifr));
	FUNC5(ifr.ifr_name, ifname, IFNAMSIZ);
#ifdef __linux__
	ifr.ifr_hwaddr.sa_family = AF_UNSPEC;
	FUNC3(ifr.ifr_hwaddr.sa_data, addr, ETH_ALEN);
#endif /* __linux__ */
#if defined(__FreeBSD__) || defined(__DragonFly__) || defined(__FreeBSD_kernel__)
	{
		struct sockaddr_dl *dlp;

		dlp = (struct sockaddr_dl *) &ifr.ifr_addr;
		dlp->sdl_len = sizeof(struct sockaddr_dl);
		dlp->sdl_family = AF_LINK;
		dlp->sdl_index = 0;
		dlp->sdl_nlen = 0;
		dlp->sdl_alen = ETH_ALEN;
		dlp->sdl_slen = 0;
		os_memcpy(LLADDR(dlp), addr, ETH_ALEN);
	}
#endif /* defined(__FreeBSD__) || defined(__DragonFly__) || defined(FreeBSD_kernel__) */
#if defined(__NetBSD__) || defined(__OpenBSD__) || defined(__APPLE__)
	{
		struct sockaddr *sap;

		sap = (struct sockaddr *) &ifr.ifr_addr;
		sap->sa_len = sizeof(struct sockaddr);
		sap->sa_family = AF_UNSPEC;
		os_memcpy(sap->sa_data, addr, ETH_ALEN);
	}
#endif /* defined(__NetBSD__) || defined(__OpenBSD__) || defined(__APPLE__) */

	if (FUNC2(s, add ? SIOCADDMULTI : SIOCDELMULTI, (caddr_t) &ifr) < 0) {
		FUNC8(MSG_ERROR, "ioctl[SIOC{ADD/DEL}MULTI]: %s",
			   FUNC7(errno));
		FUNC1(s);
		return -1;
	}
	FUNC1(s);
	return 0;
}