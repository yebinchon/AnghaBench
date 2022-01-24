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
typedef  void* device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AXP_POWERBAT ; 
 int /*<<< orphan*/  AXP_POWERBAT_SHUTDOWN ; 
 int RB_POWEROFF ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC1 (void*,char*) ; 

__attribute__((used)) static void
FUNC2(void *devp, int howto)
{
	device_t dev;

	if ((howto & RB_POWEROFF) == 0)
		return;

	dev = devp;

	if (bootverbose)
		FUNC1(dev, "Shutdown Axp8xx\n");

	FUNC0(dev, AXP_POWERBAT, AXP_POWERBAT_SHUTDOWN);
}