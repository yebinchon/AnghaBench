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
typedef  int /*<<< orphan*/  u_int32_t ;
struct ifreq {scalar_t__ ifr_data; int /*<<< orphan*/  ifr_name; } ;
struct if_data {scalar_t__ ifi_baudrate; } ;
typedef  int /*<<< orphan*/  ifr ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  SIOCGIFDATA ; 
 int /*<<< orphan*/  FUNC0 (struct ifreq*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int FUNC3 () ; 
 int FUNC4 (int,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

u_int32_t
FUNC6(char *ifname)
{
	int		s;
	struct ifreq	ifr;
	struct if_data	ifrdat;

	s = FUNC3();
	FUNC0(&ifr, sizeof(ifr));
	if (FUNC5(ifr.ifr_name, ifname, sizeof(ifr.ifr_name)) >=
	    sizeof(ifr.ifr_name))
		FUNC2(1, "getifspeed: strlcpy");
	ifr.ifr_data = (caddr_t)&ifrdat;
	if (FUNC4(s, SIOCGIFDATA, (caddr_t)&ifr) == -1)
		FUNC1(1, "SIOCGIFDATA");
	return ((u_int32_t)ifrdat.ifi_baudrate);
}