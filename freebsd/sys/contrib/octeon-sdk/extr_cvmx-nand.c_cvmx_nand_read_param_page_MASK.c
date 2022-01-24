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
typedef  int uint64_t ;
typedef  int ULL ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int CVMX_NAND_INVALID_PARAM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int CVMX_NAND_STATE_16BIT ; 
 int /*<<< orphan*/  NAND_COMMAND_READ_PARAM_PAGE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int) ; 
 TYPE_1__* cvmx_nand_state ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

int FUNC6(int chip, uint64_t buffer_address, int buffer_length)
{
    int bytes;

    FUNC0();
    FUNC1("%d", chip);
    FUNC1("0x%llx", (ULL)buffer_address);
    FUNC1("%d", buffer_length);

    if ((chip < 0) || (chip > 7))
        FUNC2(CVMX_NAND_INVALID_PARAM);
    if (!buffer_address)
        FUNC2(CVMX_NAND_INVALID_PARAM);
    if (buffer_address & 7)
        FUNC2(CVMX_NAND_INVALID_PARAM);
    if (buffer_length & 7)
        FUNC2(CVMX_NAND_INVALID_PARAM);
    if (!buffer_length)
        FUNC2(CVMX_NAND_INVALID_PARAM);

    bytes = FUNC4(chip, NAND_COMMAND_READ_PARAM_PAGE, 1, 0x0, 0, buffer_address, buffer_length);
    if (cvmx_nand_state[chip].flags & CVMX_NAND_STATE_16BIT)
        FUNC3(FUNC5(buffer_address), buffer_length);
    FUNC2(bytes);
}