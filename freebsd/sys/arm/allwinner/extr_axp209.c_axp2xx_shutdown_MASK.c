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
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AXP2XX_SHUTBAT ; 
 int /*<<< orphan*/  AXP2XX_SHUTBAT_SHUTDOWN ; 
 int RB_POWEROFF ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*) ; 

__attribute__((used)) static void
FUNC2(void *devp, int howto)
{
	device_t dev;

	if (!(howto & RB_POWEROFF))
		return;
	dev = (device_t)devp;

	if (bootverbose)
		FUNC1(dev, "Shutdown AXP2xx\n");

	FUNC0(dev, AXP2XX_SHUTBAT, AXP2XX_SHUTBAT_SHUTDOWN);
}