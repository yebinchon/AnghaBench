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
typedef  int uint8_t ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int CVMX_NAND_INVALID_PARAM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int CVMX_NAND_STATE_16BIT ; 
 int /*<<< orphan*/  NAND_COMMAND_STATUS ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ cvmx_nand_buffer ; 
 TYPE_1__* cvmx_nand_state ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

int FUNC5(int chip)
{
    int status;
    int offset = !!(cvmx_nand_state[chip].flags & CVMX_NAND_STATE_16BIT);  /* Normalize flag to 0/1 */

    FUNC0();
    FUNC1("%d", chip);

    if ((chip < 0) || (chip > 7))
        FUNC2(CVMX_NAND_INVALID_PARAM);

    *((uint8_t*)cvmx_nand_buffer + offset)  = 0xff;
    status = FUNC3(chip, NAND_COMMAND_STATUS, 0, 0, 0, FUNC4(cvmx_nand_buffer), 8);
    if (status > 0)
        status = *((uint8_t*)cvmx_nand_buffer + offset);

    FUNC2(status);
}