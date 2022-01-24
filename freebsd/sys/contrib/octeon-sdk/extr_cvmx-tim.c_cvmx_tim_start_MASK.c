#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int enable_dwb; int enable_timers; } ;
struct TYPE_5__ {int /*<<< orphan*/  u64; TYPE_1__ s; } ;
typedef  TYPE_2__ cvmx_tim_control_t ;
struct TYPE_6__ {int /*<<< orphan*/  start_time; } ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_CLOCK_TIM ; 
 int /*<<< orphan*/  CVMX_TIM_REG_FLAGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__ cvmx_tim ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(void)
{
    cvmx_tim_control_t control;

    control.u64 = FUNC1(CVMX_TIM_REG_FLAGS);
    control.s.enable_dwb = 1;
    control.s.enable_timers = 1;

    /* Remember when we started the timers */
    cvmx_tim.start_time = FUNC0(CVMX_CLOCK_TIM);
    FUNC2(CVMX_TIM_REG_FLAGS, control.u64);
}