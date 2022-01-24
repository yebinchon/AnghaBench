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
typedef  int u_char ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  PNP_RESOURCE_DATA ; 
 int /*<<< orphan*/  PNP_STATUS ; 
 int /*<<< orphan*/  _PNP_ADDRESS ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int rd_port ; 

int
FUNC5(u_char *buffer, int len)
{
    int i, j;

    for (i = 0; i < len; i++) {
	FUNC3(_PNP_ADDRESS, PNP_STATUS);
	for (j = 0; j < 100; j++) {
	    if ((FUNC2((rd_port << 2) | 0x3)) & 0x1)
		break;
	    FUNC1(1);
	}
	if (j == 100) {
	    FUNC4("PnP device failed to report resource data\n");
	    return 0;
	}
	FUNC3(_PNP_ADDRESS, PNP_RESOURCE_DATA);
	buffer[i] = FUNC2((rd_port << 2) | 0x3);
	FUNC0(FUNC4("--- get_resource_info: got 0x%02x\n",(unsigned)buffer[i]));
    }
    return 1;
}