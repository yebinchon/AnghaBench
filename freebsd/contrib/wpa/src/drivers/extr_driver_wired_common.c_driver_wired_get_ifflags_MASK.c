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
struct ifreq {int ifr_flags; int /*<<< orphan*/  ifr_name; } ;
typedef  int /*<<< orphan*/  ifr ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SIOCGIFFLAGS ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ifreq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(const char *ifname, int *flags)
{
	struct ifreq ifr;
	int s;

	s = FUNC4(PF_INET, SOCK_DGRAM, 0);
	if (s < 0) {
		FUNC6(MSG_ERROR, "socket: %s", FUNC5(errno));
		return -1;
	}

	FUNC2(&ifr, 0, sizeof(ifr));
	FUNC3(ifr.ifr_name, ifname, IFNAMSIZ);
	if (FUNC1(s, SIOCGIFFLAGS, (caddr_t) &ifr) < 0) {
		FUNC6(MSG_ERROR, "ioctl[SIOCGIFFLAGS]: %s",
			   FUNC5(errno));
		FUNC0(s);
		return -1;
	}
	FUNC0(s);
	*flags = ifr.ifr_flags & 0xffff;
	return 0;
}