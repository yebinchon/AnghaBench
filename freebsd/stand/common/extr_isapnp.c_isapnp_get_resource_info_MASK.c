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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  u_char ;

/* Variables and functions */
 int /*<<< orphan*/  RESOURCE_DATA ; 
 int /*<<< orphan*/  STATUS ; 
 int /*<<< orphan*/  _PNP_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  isapnp_readport ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int
FUNC4(uint8_t *buffer, int len)
{
    int		i, j;
    u_char	temp;

    for (i = 0; i < len; i++) {
	FUNC2(_PNP_ADDRESS, STATUS);
	for (j = 0; j < 100; j++) {
	    if ((FUNC1(isapnp_readport)) & 0x1)
		break;
	    FUNC0(1);
	}
	if (j == 100) {
	    FUNC3("PnP device failed to report resource data\n");
	    return(1);
	}
	FUNC2(_PNP_ADDRESS, RESOURCE_DATA);
	temp = FUNC1(isapnp_readport);
	if (buffer != NULL)
	    buffer[i] = temp;
    }
    return(0);
}