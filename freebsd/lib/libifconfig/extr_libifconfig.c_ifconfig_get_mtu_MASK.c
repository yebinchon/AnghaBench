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
struct ifreq {int ifr_mtu; int /*<<< orphan*/  ifr_name; } ;
typedef  int /*<<< orphan*/  ifr ;
typedef  int /*<<< orphan*/  ifconfig_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_LOCAL ; 
 int /*<<< orphan*/  SIOCGIFMTU ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ifreq*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifreq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int) ; 

int
FUNC3(ifconfig_handle_t *h, const char *name, int *mtu)
{
	struct ifreq ifr;

	FUNC1(&ifr, 0, sizeof(ifr));
	(void)FUNC2(ifr.ifr_name, name, sizeof(ifr.ifr_name));

	if (FUNC0(h, AF_LOCAL, SIOCGIFMTU, &ifr) == -1) {
		return (-1);
	}

	*mtu = ifr.ifr_mtu;
	return (0);
}