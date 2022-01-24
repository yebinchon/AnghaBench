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
typedef  int /*<<< orphan*/  u_char ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PNP_CONFIG_CONTROL ; 
 int PNP_MAX_CARDS ; 
 int /*<<< orphan*/  PNP_SERIAL_ISOLATION ; 
 int /*<<< orphan*/  PNP_SET_RD_DATA ; 
 int /*<<< orphan*/  PNP_WAKE ; 
 int /*<<< orphan*/  _PNP_ADDRESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ logdevs ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int rd_port ; 
 int /*<<< orphan*/  FUNC5 () ; 

int
FUNC6()
{
    int csn;
    u_char data[9];

    FUNC5();

    /* Reset CSN for All Cards */
    FUNC4(PNP_CONFIG_CONTROL, 0x04);

    for (csn = 1; (csn < PNP_MAX_CARDS); csn++) {
	/* Wake up cards without a CSN */
	logdevs = 0 ;
	FUNC4(PNP_WAKE, 0);
	FUNC4(PNP_SET_RD_DATA, rd_port);
	FUNC3(_PNP_ADDRESS, PNP_SERIAL_ISOLATION);
	FUNC0(1000);	/* Delay 1 msec */

	if (FUNC2(data))
	    FUNC1(data, csn);
	else
	    break;
    }
    return csn - 1;
}