#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_6__ {TYPE_1__* p_FmPortImPram; } ;
struct TYPE_7__ {TYPE_2__ im; } ;
typedef  TYPE_3__ t_FmPort ;
typedef  int /*<<< orphan*/  t_Error ;
struct TYPE_5__ {int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_OK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int IM_MODE_GRC_STP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

t_Error FUNC2(t_FmPort *p_FmPort)
{
    uint32_t    tmpReg = FUNC0(p_FmPort->im.p_FmPortImPram->mode);
    FUNC1(p_FmPort->im.p_FmPortImPram->mode, (uint32_t)(tmpReg & ~IM_MODE_GRC_STP));
    return E_OK;
}