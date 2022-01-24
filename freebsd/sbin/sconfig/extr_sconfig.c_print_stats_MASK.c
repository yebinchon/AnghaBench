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
struct serial_statistics {unsigned long rintr; unsigned long ibytes; unsigned long ipkts; unsigned long ierrs; unsigned long tintr; unsigned long obytes; unsigned long opkts; unsigned long oerrs; unsigned long mintr; } ;

/* Variables and functions */
 int /*<<< orphan*/  SERIAL_GETSTAT ; 
 char* chan_name ; 
 char* FUNC0 (unsigned long) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,struct serial_statistics*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ sflag ; 

__attribute__((used)) static void
FUNC4 (int fd, int need_header)
{
	struct serial_statistics st;
	unsigned long sarr [9];
	int i;

	if (FUNC1 (fd, SERIAL_GETSTAT, &st) < 0) {
		FUNC2 ("getting statistics");
		return;
	}
	if (need_header) {
		if (sflag) {
			FUNC3 ("        ------------Receive-----------      "
				"------------Transmit----------\n");
			FUNC3 ("Channel Interrupts  Packets     Errors      "
				"Interrupts  Packets     Errors\n");
		}
		else    {
			FUNC3 ("        --------Receive---------------  "
				"--------Transmit--------------  Modem\n");
			FUNC3 ("Channel Intrs   Bytes   Packets Errors  "
				"Intrs   Bytes   Packets Errors  Intrs\n");
		}
	}
	
	sarr [0] = st.rintr;
	sarr [1] = st.ibytes;
	sarr [2] = st.ipkts;
	sarr [3] = st.ierrs;
	sarr [4] = st.tintr;
	sarr [5] = st.obytes;
	sarr [6] = st.opkts;
	sarr [7] = st.oerrs;
	sarr [8] = st.mintr;
	FUNC3 ("%s", chan_name);
	if (sflag) {
		FUNC3 ("\t%-12lu%-12lu%-12lu%-12lu%-12lu%-12lu", sarr[0],
			sarr[2], sarr[3], sarr[4], sarr[6], sarr[7]);
	} else {
		for (i = 0; i < 9; i++)
			FUNC3 ("\t%s", FUNC0 (sarr [i]));
		FUNC3 ("\n");
	}
}