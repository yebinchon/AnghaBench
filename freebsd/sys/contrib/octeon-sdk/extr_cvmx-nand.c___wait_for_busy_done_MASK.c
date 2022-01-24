#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int two; int r_b; int n; } ;
struct TYPE_6__ {TYPE_1__ wait; } ;
typedef  TYPE_2__ cvmx_nand_cmd_t ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  CVMX_NAND_NO_MEMORY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CVMX_NAND_SUCCESS ; 
 scalar_t__ FUNC3 (TYPE_2__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(int chip)
{
    cvmx_nand_cmd_t cmd;

    FUNC0();
    FUNC1("%d", chip);

    FUNC4(&cmd,  0,  sizeof(cmd));
    cmd.wait.two = 2;
    cmd.wait.r_b=0;
    cmd.wait.n = 2;

    /* Wait for RB to be valied (tWB).
    ** Use 5 * tWC as proxy.  In some modes this is
    ** much longer than required, but does not affect performance
    ** since we will wait much longer for busy to de-assert.
    */
    if (FUNC3(cmd))
        FUNC2(CVMX_NAND_NO_MEMORY);
    if (FUNC3(cmd))
        FUNC2(CVMX_NAND_NO_MEMORY);
    if (FUNC3(cmd))
        FUNC2(CVMX_NAND_NO_MEMORY);
    if (FUNC3(cmd))
        FUNC2(CVMX_NAND_NO_MEMORY);
    cmd.wait.r_b=1; /* Now wait for busy to be de-asserted */
    if (FUNC3(cmd))
        FUNC2(CVMX_NAND_NO_MEMORY);

    FUNC2(CVMX_NAND_SUCCESS);
}