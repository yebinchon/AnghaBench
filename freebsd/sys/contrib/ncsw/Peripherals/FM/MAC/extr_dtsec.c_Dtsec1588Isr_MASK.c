#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  scalar_t__ t_Handle ;
struct TYPE_2__ {int /*<<< orphan*/  h_App; int /*<<< orphan*/  (* f_Exception ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;scalar_t__ ptpTsuEnabled; struct dtsec_regs* p_MemMap; } ;
typedef  TYPE_1__ t_Dtsec ;
struct dtsec_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int TMR_PEVENT_TSRE ; 
 int /*<<< orphan*/  e_FM_MAC_EX_1G_1588_TS_RX_ERR ; 
 int FUNC1 (struct dtsec_regs*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(t_Handle h_Dtsec)
{
    t_Dtsec             *p_Dtsec = (t_Dtsec *)h_Dtsec;
    uint32_t            event;
    struct dtsec_regs   *p_DtsecMemMap = p_Dtsec->p_MemMap;

    if (p_Dtsec->ptpTsuEnabled)
    {
        event = FUNC1(p_DtsecMemMap);

        if (event)
        {
            FUNC0(event & TMR_PEVENT_TSRE);
            p_Dtsec->f_Exception(p_Dtsec->h_App, e_FM_MAC_EX_1G_1588_TS_RX_ERR);
        }
    }
}