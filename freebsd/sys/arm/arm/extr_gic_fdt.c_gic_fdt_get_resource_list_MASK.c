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
struct resource_list {int dummy; } ;
struct arm_gic_devinfo {struct resource_list rl; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct arm_gic_devinfo* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct resource_list *
FUNC2(device_t bus, device_t child)
{
	struct arm_gic_devinfo *di;

	di = FUNC1(child);
	FUNC0(di != NULL, ("gic_fdt_get_resource_list: No devinfo"));

	return (&di->rl);
}