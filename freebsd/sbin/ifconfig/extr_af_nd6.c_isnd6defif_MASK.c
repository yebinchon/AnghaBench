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
struct in6_ndifreq {unsigned int ifindex; int /*<<< orphan*/  ifname; } ;
typedef  int /*<<< orphan*/  ndifreq ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_2__ {int /*<<< orphan*/  ifr_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIOCGDEFIFACE_IN6 ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ ifr ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct in6_ndifreq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int
FUNC5(int s)
{
	struct in6_ndifreq ndifreq;
	unsigned int ifindex;
	int error;

	FUNC2(&ndifreq, 0, sizeof(ndifreq));
	FUNC3(ndifreq.ifname, ifr.ifr_name, sizeof(ndifreq.ifname));

	ifindex = FUNC0(ndifreq.ifname);
	error = FUNC1(s, SIOCGDEFIFACE_IN6, (caddr_t)&ndifreq);
	if (error) {
		FUNC4("ioctl(SIOCGDEFIFACE_IN6)");
		return (error);
	}
	return (ndifreq.ifindex == ifindex);
}