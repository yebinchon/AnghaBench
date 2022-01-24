#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int flags; } ;
struct in6_ndireq {TYPE_1__ ndi; int /*<<< orphan*/  ifname; } ;
typedef  int /*<<< orphan*/  nd ;
struct TYPE_4__ {int /*<<< orphan*/  ifr_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 scalar_t__ EAFNOSUPPORT ; 
 scalar_t__ EPFNOSUPPORT ; 
 scalar_t__ EPROTONOSUPPORT ; 
 int /*<<< orphan*/  ND6BITS ; 
 int /*<<< orphan*/  SIOCGIFINFO_IN6 ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 TYPE_2__ ifr ; 
 int FUNC1 (int,int /*<<< orphan*/ ,struct in6_ndireq*) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct in6_ndireq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

void
FUNC9(int s)
{
	struct in6_ndireq nd;
	int s6;
	int error;
	int isdefif;

	FUNC3(&nd, 0, sizeof(nd));
	FUNC7(nd.ifname, ifr.ifr_name, sizeof(nd.ifname));
	if ((s6 = FUNC6(AF_INET6, SOCK_DGRAM, 0)) < 0) {
		if (errno != EAFNOSUPPORT && errno != EPROTONOSUPPORT)
			FUNC8("socket(AF_INET6, SOCK_DGRAM)");
		return;
	}
	error = FUNC1(s6, SIOCGIFINFO_IN6, &nd);
	if (error) {
		if (errno != EPFNOSUPPORT)
			FUNC8("ioctl(SIOCGIFINFO_IN6)");
		FUNC0(s6);
		return;
	}
	isdefif = FUNC2(s6);
	FUNC0(s6);
	if (nd.ndi.flags == 0 && !isdefif)
		return;
	FUNC4("\tnd6 options",
	    (unsigned int)(nd.ndi.flags | (isdefif << 15)), ND6BITS);
	FUNC5('\n');
}