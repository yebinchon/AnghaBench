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

/* Variables and functions */
 int /*<<< orphan*/  OCTEON_FEATURE_PKND ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(int ipd_port)
{
    if (FUNC1(OCTEON_FEATURE_PKND))
    {
        if (ipd_port >= 0x800 && ipd_port < 0xd00)
        {
            int port = ((ipd_port & 0xff) >> 6);
            return ((port) ? (port - 1) : ((ipd_port & 0xff) >> 4));
        }
        else if (ipd_port >= 0x400 && ipd_port < 0x600)
            return (ipd_port & 0xff);
        else if (ipd_port >= 0x100 && ipd_port < 0x120)
            return (ipd_port & 0xff);
        else if (ipd_port < 8)
            return ipd_port;
        else
            FUNC0("cvmx_helper_get_interface_index_num: Illegal IPD port number %d\n", ipd_port);
        return -1;
    }
    if (ipd_port < 32)
        return ipd_port & 15;
    else if (ipd_port < 40)
        return ipd_port & 3;
    else if (ipd_port < 44)
        return ipd_port & 1;
    else if (ipd_port < 46)
        return ipd_port & 1;
    else
        FUNC0("cvmx_helper_get_interface_index_num: Illegal IPD port number\n");

    return -1;
}