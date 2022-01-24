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
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int ocd_data; } ;

/* Variables and functions */
#define  AXP209 129 
#define  AXP221 128 
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 int /*<<< orphan*/  compat_data ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{

	if (!FUNC2(dev))
		return (ENXIO);

	switch (FUNC1(dev, compat_data)->ocd_data)
	{
	case AXP209:
		FUNC0(dev, "X-Powers AXP209 Power Management Unit");
		break;
	case AXP221:
		FUNC0(dev, "X-Powers AXP221 Power Management Unit");
		break;
	default:
		return (ENXIO);
	}

	return (BUS_PROBE_DEFAULT);
}