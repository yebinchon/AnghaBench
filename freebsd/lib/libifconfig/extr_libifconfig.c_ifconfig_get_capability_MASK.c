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
struct ifreq {int /*<<< orphan*/  ifr_reqcap; int /*<<< orphan*/  ifr_curcap; int /*<<< orphan*/  ifr_name; } ;
struct ifconfig_capabilities {int /*<<< orphan*/  reqcap; int /*<<< orphan*/  curcap; } ;
typedef  int /*<<< orphan*/  ifr ;
typedef  int /*<<< orphan*/  ifconfig_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_LOCAL ; 
 int /*<<< orphan*/  SIOCGIFCAP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ifreq*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifreq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int) ; 

int
FUNC3(ifconfig_handle_t *h, const char *name,
    struct ifconfig_capabilities *capability)
{
	struct ifreq ifr;

	FUNC1(&ifr, 0, sizeof(ifr));
	(void)FUNC2(ifr.ifr_name, name, sizeof(ifr.ifr_name));

	if (FUNC0(h, AF_LOCAL, SIOCGIFCAP, &ifr) < 0) {
		return (-1);
	}
	capability->curcap = ifr.ifr_curcap;
	capability->reqcap = ifr.ifr_reqcap;
	return (0);
}