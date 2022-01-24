#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ cvmx_nand_status_t ;
struct TYPE_7__ {int fifteen; } ;
struct TYPE_6__ {int three; } ;
struct TYPE_8__ {TYPE_2__ bus_rel; TYPE_1__ chip_dis; } ;
typedef  TYPE_3__ cvmx_nand_cmd_t ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ CVMX_NAND_SUCCESS ; 
 int /*<<< orphan*/  CVMX_NDF_DRBELL ; 
 scalar_t__ FUNC2 (TYPE_3__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline cvmx_nand_status_t FUNC5(void)
{
    cvmx_nand_status_t result;
    cvmx_nand_cmd_t cmd;

    FUNC0();

    /* Send chip deselect */
    FUNC4(&cmd,  0,  sizeof(cmd));
    cmd.chip_dis.three = 3;
    result = FUNC2(cmd);
    if (result)
        FUNC1(result);

    /* Send bus release */
    FUNC4(&cmd,  0,  sizeof(cmd));
    cmd.bus_rel.fifteen = 15;
    result = FUNC2(cmd);
    if (result)
        FUNC1(result);

    /* Ring the doorbell */
    FUNC3(CVMX_NDF_DRBELL, 1);
    FUNC1(CVMX_NAND_SUCCESS);
}