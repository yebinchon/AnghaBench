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
struct TYPE_2__ {int c_flags; } ;

/* Variables and functions */
 int CFCR_DLAB ; 
 int FUNC0 (int) ; 
 int COMC_FMT ; 
 int C_ACTIVEIN ; 
 int C_ACTIVEOUT ; 
 int C_PRESENTIN ; 
 int C_PRESENTOUT ; 
 int /*<<< orphan*/  EV_VOLATILE ; 
 int LSR_RXRDY ; 
 int MCR_DTR ; 
 int MCR_RTS ; 
 scalar_t__ com_cfcr ; 
 scalar_t__ com_data ; 
 scalar_t__ com_dlbh ; 
 scalar_t__ com_dlbl ; 
 scalar_t__ com_lsr ; 
 scalar_t__ com_mcr ; 
 int comc_curspeed ; 
 int comc_port ; 
 TYPE_1__ comconsole ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6(int speed, int port)
{
	static int TRY_COUNT = 1000000;
	char intbuf[64];
	int tries;

	FUNC5("hw.uart.console");
	comc_curspeed = speed;
	comc_port = port;
	if ((comconsole.c_flags & (C_ACTIVEIN | C_ACTIVEOUT)) == 0)
		return;

	FUNC3(comc_port + com_cfcr, CFCR_DLAB | COMC_FMT);
	FUNC3(comc_port + com_dlbl, FUNC0(speed) & 0xff);
	FUNC3(comc_port + com_dlbh, FUNC0(speed) >> 8);
	FUNC3(comc_port + com_cfcr, COMC_FMT);
	FUNC3(comc_port + com_mcr, MCR_RTS | MCR_DTR);

	tries = 0;
	do
		FUNC2(comc_port + com_data);
	while (FUNC2(comc_port + com_lsr) & LSR_RXRDY && ++tries < TRY_COUNT);

	if (tries < TRY_COUNT) {
		comconsole.c_flags |= (C_PRESENTIN | C_PRESENTOUT);
		FUNC4(intbuf, "io:%d,br:%d", comc_port, comc_curspeed);
		FUNC1("hw.uart.console", EV_VOLATILE, intbuf, NULL, NULL);
	} else
		comconsole.c_flags &= ~(C_PRESENTIN | C_PRESENTOUT);
}