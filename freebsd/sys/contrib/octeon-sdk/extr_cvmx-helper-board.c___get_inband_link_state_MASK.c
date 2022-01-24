#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int speed; int /*<<< orphan*/  full_duplex; int /*<<< orphan*/  link_up; } ;
struct TYPE_8__ {scalar_t__ u64; TYPE_2__ s; } ;
typedef  TYPE_3__ cvmx_helper_link_info_t ;
struct TYPE_6__ {int speed; int /*<<< orphan*/  duplex; int /*<<< orphan*/  status; } ;
struct TYPE_9__ {TYPE_1__ s; int /*<<< orphan*/  u64; } ;
typedef  TYPE_4__ cvmx_gmxx_rxx_rx_inbnd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static cvmx_helper_link_info_t FUNC4(int ipd_port)
{
    cvmx_helper_link_info_t  result;
    cvmx_gmxx_rxx_rx_inbnd_t inband_status;
    int interface = FUNC2(ipd_port);
    int index = FUNC1(ipd_port);

    result.u64 = 0;
    inband_status.u64 = FUNC3(FUNC0(index, interface));
    result.s.link_up = inband_status.s.status;
    result.s.full_duplex = inband_status.s.duplex;
    switch (inband_status.s.speed)
    {
        case 0: /* 10 Mbps */
            result.s.speed = 10;
            break;
        case 1: /* 100 Mbps */
            result.s.speed = 100;
            break;
        case 2: /* 1 Gbps */
            result.s.speed = 1000;
            break;
        case 3: /* Illegal */
            result.u64 = 0;
            break;
    }
    return result;
}