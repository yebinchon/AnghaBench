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
typedef  int u_int ;
typedef  int /*<<< orphan*/ * device_t ;
typedef  int /*<<< orphan*/  devclass_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static device_t
FUNC3(u_int logical_unit)
{
    int found_unit, i, maxunit;
    device_t dev;
    devclass_t batt_dc;

    dev = NULL;
    found_unit = 0;
    batt_dc = FUNC0("battery");
    maxunit = FUNC2(batt_dc);
    for (i = 0; i < maxunit; i++) {
	dev = FUNC1(batt_dc, i);
	if (dev == NULL)
	    continue;
	if (logical_unit == found_unit)
	    break;
	found_unit++;
	dev = NULL;
    }

    return (dev);
}