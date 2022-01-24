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
typedef  int /*<<< orphan*/  cvmx_mgmt_port_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_ERROR_GROUP_MGMT_PORT ; 
 int /*<<< orphan*/  CVMX_MGMT_PORT_INVALID_PARAM ; 
 int /*<<< orphan*/  CVMX_MGMT_PORT_SUCCESS ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

cvmx_mgmt_port_result_t FUNC3(int port)
{
    if ((port < 0) || (port >= FUNC0()))
        return CVMX_MGMT_PORT_INVALID_PARAM;

#if !defined(CVMX_BUILD_FOR_FREEBSD_KERNEL)
    FUNC1(CVMX_ERROR_GROUP_MGMT_PORT, port);
#endif

    /* Stop packets from comming in */
    FUNC2(port);

    /* We don't free any memory so the next intialize can reuse the HW setup */
    return CVMX_MGMT_PORT_SUCCESS;
}