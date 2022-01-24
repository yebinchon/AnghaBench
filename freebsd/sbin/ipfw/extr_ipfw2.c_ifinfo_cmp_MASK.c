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
struct TYPE_2__ {int /*<<< orphan*/  ifname; } ;
typedef  TYPE_1__ ipfw_iface_info ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(const void *a, const void *b)
{
	ipfw_iface_info *ia, *ib;

	ia = (ipfw_iface_info *)a;
	ib = (ipfw_iface_info *)b;

	return (FUNC0(ia->ifname, ib->ifname));
}