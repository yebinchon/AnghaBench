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
struct ifreq {int ifr_reqcap; int /*<<< orphan*/  ifr_name; } ;
struct ifconfig_capabilities {int curcap; int reqcap; } ;
typedef  int /*<<< orphan*/  ifr ;
typedef  int /*<<< orphan*/  ifconfig_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_LOCAL ; 
 int /*<<< orphan*/  SIOCSIFCAP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*,struct ifconfig_capabilities*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ifreq*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifreq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 

int
FUNC4(ifconfig_handle_t *h, const char *name,
    const int capability)
{
	struct ifreq ifr;
	struct ifconfig_capabilities ifcap;
	int flags, value;

	FUNC2(&ifr, 0, sizeof(ifr));

	if (FUNC0(h, name, &ifcap) != 0) {
		return (-1);
	}

	value = capability;
	flags = ifcap.curcap;
	if (value < 0) {
		value = -value;
		flags &= ~value;
	} else {
		flags |= value;
	}
	flags &= ifcap.reqcap;

	(void)FUNC3(ifr.ifr_name, name, sizeof(ifr.ifr_name));

	/*
	 * TODO: Verify that it's safe to not have ifr.ifr_curcap
	 * set for this request.
	 */
	ifr.ifr_reqcap = flags;
	if (FUNC1(h, AF_LOCAL, SIOCSIFCAP, &ifr) < 0) {
		return (-1);
	}
	return (0);
}