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
typedef  scalar_t__ t_Handle ;
typedef  int /*<<< orphan*/  t_FmPortDsarTablesSizes ;
struct TYPE_3__ {int /*<<< orphan*/ * autoResMaxSizes; } ;
struct TYPE_4__ {TYPE_1__ deepSleepVars; } ;
typedef  TYPE_2__ t_FmPort ;

/* Variables and functions */

t_FmPortDsarTablesSizes* FUNC0(t_Handle h_FmPortRx)
{
    t_FmPort *p_FmPort = (t_FmPort *)h_FmPortRx;
    return p_FmPort->deepSleepVars.autoResMaxSizes;
}