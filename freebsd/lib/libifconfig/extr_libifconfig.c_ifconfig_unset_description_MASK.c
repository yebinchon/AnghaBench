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
struct TYPE_2__ {int /*<<< orphan*/ * buffer; scalar_t__ length; } ;
struct ifreq {TYPE_1__ ifr_buffer; int /*<<< orphan*/  ifr_name; } ;
typedef  int /*<<< orphan*/  ifr ;
typedef  int /*<<< orphan*/  ifconfig_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_LOCAL ; 
 int /*<<< orphan*/  SIOCSIFDESCR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ifreq*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifreq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int) ; 

int
FUNC3(ifconfig_handle_t *h, const char *name)
{
	struct ifreq ifr;

	FUNC1(&ifr, 0, sizeof(ifr));
	(void)FUNC2(ifr.ifr_name, name, sizeof(ifr.ifr_name));
	ifr.ifr_buffer.length = 0;
	ifr.ifr_buffer.buffer = NULL;

	if (FUNC0(h, AF_LOCAL, SIOCSIFDESCR, &ifr) < 0) {
		return (-1);
	}
	return (0);
}