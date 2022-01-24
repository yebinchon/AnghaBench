#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* p_FmStateStruct; struct fman_fpm_regs* p_FmFpmRegs; } ;
typedef  TYPE_1__ t_Fm ;
struct fman_fpm_regs {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  enabledTimeStamp; int /*<<< orphan*/  fmClkFreq; struct TYPE_6__* count1MicroBit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (struct fman_fpm_regs*,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(t_Fm *p_Fm)
{
    struct fman_fpm_regs *fpm_rg = p_Fm->p_FmFpmRegs;

    FUNC0(p_Fm->p_FmStateStruct);
    FUNC0(p_Fm->p_FmStateStruct->count1MicroBit);

    FUNC1(fpm_rg, p_Fm->p_FmStateStruct->count1MicroBit, p_Fm->p_FmStateStruct->fmClkFreq);

    p_Fm->p_FmStateStruct->enabledTimeStamp = TRUE;
}