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
struct ifreq {scalar_t__ ifr_data; int /*<<< orphan*/  ifr_name; } ;
struct carpreq {int carpr_count; } ;
typedef  int /*<<< orphan*/  ifconfig_handle_t ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_LOCAL ; 
 int /*<<< orphan*/  SIOCGVH ; 
 int /*<<< orphan*/  FUNC0 (struct carpreq*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ifreq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int) ; 

int
FUNC3(ifconfig_handle_t *h, const char *name,
    struct carpreq *carpr, int ncarpr)
{
	struct ifreq ifr;

	FUNC0(carpr, sizeof(struct carpreq) * ncarpr);
	carpr[0].carpr_count = ncarpr;
	FUNC2(ifr.ifr_name, name, sizeof(ifr.ifr_name));
	ifr.ifr_data = (caddr_t)carpr;

	if (FUNC1(h, AF_LOCAL, SIOCGVH, &ifr) != 0) {
		return (-1);
	}

	return (0);
}