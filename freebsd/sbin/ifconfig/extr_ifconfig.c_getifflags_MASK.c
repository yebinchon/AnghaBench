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
struct ifreq {int ifr_flags; int ifr_flagshigh; int /*<<< orphan*/  ifr_name; } ;
typedef  int /*<<< orphan*/  my_ifr ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_LOCAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  SIOCGIFFLAGS ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ifreq*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static int
FUNC8(const char *ifname, int us)
{
	struct ifreq my_ifr;
	int s;
	
	FUNC5(&my_ifr, 0, sizeof(my_ifr));
	(void) FUNC7(my_ifr.ifr_name, ifname, sizeof(my_ifr.ifr_name));
	if (us < 0) {
		if ((s = FUNC6(AF_LOCAL, SOCK_DGRAM, 0)) < 0)
			FUNC2(1, "socket(family AF_LOCAL,SOCK_DGRAM");
	} else
		s = us;
 	if (FUNC4(s, SIOCGIFFLAGS, (caddr_t)&my_ifr) < 0) {
 		FUNC0("ioctl (SIOCGIFFLAGS)");
 		FUNC3(1);
 	}
	if (us < 0)
		FUNC1(s);
	return ((my_ifr.ifr_flags & 0xffff) | (my_ifr.ifr_flagshigh << 16));
}