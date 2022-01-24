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
struct TYPE_3__ {int ena; } ;
struct TYPE_4__ {int /*<<< orphan*/  u64; TYPE_1__ s; } ;
typedef  TYPE_2__ cvmx_tra_ctl_t ;

/* Variables and functions */
 int CVMX_L2C_TADS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(int enable)
{
    cvmx_tra_ctl_t control;
    int tad;

    for (tad = 0; tad < CVMX_L2C_TADS; tad++)
    {    
        control.u64 = FUNC1(FUNC0(tad));
        control.s.ena = enable;
        FUNC2(FUNC0(tad), control.u64);
        FUNC1(FUNC0(tad));
    }
}