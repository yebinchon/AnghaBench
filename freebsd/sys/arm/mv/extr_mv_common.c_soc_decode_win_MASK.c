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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 scalar_t__ MV_DUMP_WIN ; 
 scalar_t__ MV_SOC_ARMADA_XP ; 
 int /*<<< orphan*/  FUNC0 (char*,int*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 
 scalar_t__ eth_port ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ soc_family ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ usb_port ; 
 int FUNC7 () ; 

int
FUNC8(void)
{
	uint32_t dev, rev;
	int mask, err;

	mask = 0;
	FUNC0("hw.pm-disable-mask", &mask);

	if (mask != 0)
		FUNC4(mask);

	/* Retrieve data about physical addresses from device tree. */
	if ((err = FUNC7()) != 0)
		return (err);

	/* Retrieve our ID: some windows facilities vary between SoC models */
	FUNC6(&dev, &rev);

	if (soc_family == MV_SOC_ARMADA_XP)
		if ((err = FUNC2()) != 0)
			return(err);


	FUNC1();
	if (MV_DUMP_WIN)
		FUNC5();

	eth_port = 0;
	usb_port = 0;
	if ((err = FUNC3()) != 0)
		return (err);

	return (0);
}