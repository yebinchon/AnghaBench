#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ valid; } ;
struct TYPE_4__ {int /*<<< orphan*/  u32; TYPE_1__ s; } ;
typedef  TYPE_2__ cvmx_sriomaintx_port_0_link_resp_t ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_CIU_SOFT_PRST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  OCTEON_CN63XX_PASS1_X ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

int FUNC7(int srio_port)
{
    cvmx_sriomaintx_port_0_link_resp_t link_resp;

    if (FUNC2(OCTEON_CN63XX_PASS1_X))
        return -1;

    /* Generate a symbol reset to the link partner by writing 0x3. */
    if (FUNC4(srio_port, 0, -1, 0, 0,
        FUNC0(srio_port), 3))
        return -1;

    if (FUNC3(srio_port, 0, -1, 0, 0,
        FUNC1(srio_port), &link_resp.u32))
        return -1;

    /* Poll until link partner has received the reset. */
    while (link_resp.s.valid == 0)
    {
        //cvmx_dprintf("Waiting for Link Response\n");
        if (FUNC3(srio_port, 0, -1, 0, 0,
            FUNC1(srio_port), &link_resp.u32))
            return -1;
    }

    /* Valid response, Asserting MAC reset */
    FUNC6(CVMX_CIU_SOFT_PRST, 0x1);

    FUNC5(10);

    /* De-asserting MAC Reset */
    FUNC6(CVMX_CIU_SOFT_PRST, 0x0);

    return 0;
}