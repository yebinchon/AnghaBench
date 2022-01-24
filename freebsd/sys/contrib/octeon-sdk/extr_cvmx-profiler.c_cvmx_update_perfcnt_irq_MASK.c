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
typedef  int uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  COP0_CVMCTL ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

void FUNC2(void)
{
    uint64_t cvmctl;
   
    /* Clear CvmCtl[IPPCI] bit and move the Performance Counter
     * interrupt to IRQ 6
     */
    FUNC0(cvmctl, COP0_CVMCTL);
    cvmctl &= ~(7 << 7);
    cvmctl |= 6 << 7;
    FUNC1(cvmctl, COP0_CVMCTL);
}