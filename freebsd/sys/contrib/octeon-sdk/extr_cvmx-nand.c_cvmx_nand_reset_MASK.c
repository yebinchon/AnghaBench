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
typedef  int /*<<< orphan*/  cvmx_nand_status_t ;
struct TYPE_2__ {int /*<<< orphan*/  page_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_NAND_INVALID_PARAM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  CVMX_NAND_NO_MEMORY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CVMX_NAND_SUCCESS ; 
 int /*<<< orphan*/  NAND_COMMAND_RESET ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 TYPE_1__* cvmx_nand_state ; 

cvmx_nand_status_t FUNC6(int chip)
{
    FUNC0();
    FUNC1("%d", chip);

    if ((chip < 0) || (chip > 7))
        FUNC2(CVMX_NAND_INVALID_PARAM);
    if (!cvmx_nand_state[chip].page_size)
        FUNC2(CVMX_NAND_INVALID_PARAM);

    if (FUNC4(chip, NAND_COMMAND_RESET, 0, 0, 0))
        FUNC2(CVMX_NAND_NO_MEMORY);

    /* WAIT for R_B to signal reset is complete  */
    if (FUNC5(chip))
        FUNC2(CVMX_NAND_NO_MEMORY);

    if (FUNC3())
        FUNC2(CVMX_NAND_NO_MEMORY);

    FUNC2(CVMX_NAND_SUCCESS);
}