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
typedef  int /*<<< orphan*/  t_Error ;
struct TYPE_3__ {int majorRev; } ;
struct TYPE_4__ {TYPE_1__ fmRevInfo; } ;
struct dtsec_regs {TYPE_2__ fmMacControllerDriver; struct dtsec_regs* p_MemMap; } ;
typedef  struct dtsec_regs t_Dtsec ;
typedef  int e_CommMode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dtsec_regs*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int e_COMM_MODE_RX ; 
 int e_COMM_MODE_TX ; 
 int /*<<< orphan*/  FUNC3 (struct dtsec_regs*) ; 
 int /*<<< orphan*/  FUNC4 (struct dtsec_regs*) ; 

__attribute__((used)) static t_Error FUNC5(t_Dtsec *p_Dtsec, e_CommMode mode)
{
    struct dtsec_regs *p_MemMap;

    FUNC0(p_Dtsec);

    p_MemMap = p_Dtsec->p_MemMap;
    FUNC0(p_MemMap);

    /* Assert the graceful transmit stop bit */
    if (mode & e_COMM_MODE_RX)
    {
        FUNC3(p_MemMap);

#ifdef FM_GRS_ERRATA_DTSEC_A002
        if (p_Dtsec->fmMacControllerDriver.fmRevInfo.majorRev == 2)
            XX_UDelay(100);
#else  /* FM_GRS_ERRATA_DTSEC_A002 */
#ifdef FM_GTS_AFTER_DROPPED_FRAME_ERRATA_DTSEC_A004839
        XX_UDelay(10);
#endif /* FM_GTS_AFTER_DROPPED_FRAME_ERRATA_DTSEC_A004839 */
#endif /* FM_GRS_ERRATA_DTSEC_A002 */
    }

    if (mode & e_COMM_MODE_TX)
#if defined(FM_GTS_ERRATA_DTSEC_A004) || defined(FM_GTS_AFTER_MAC_ABORTED_FRAME_ERRATA_DTSEC_A0012)
    if (p_Dtsec->fmMacControllerDriver.fmRevInfo.majorRev == 2)
        DBG(INFO, ("GTS not supported due to DTSEC_A004 errata."));
#else  /* not defined(FM_GTS_ERRATA_DTSEC_A004) ||... */
#ifdef FM_GTS_UNDERRUN_ERRATA_DTSEC_A0014
        DBG(INFO, ("GTS not supported due to DTSEC_A0014 errata."));
#else  /* FM_GTS_UNDERRUN_ERRATA_DTSEC_A0014 */
        FUNC4(p_MemMap);
#endif /* FM_GTS_UNDERRUN_ERRATA_DTSEC_A0014 */
#endif /* defined(FM_GTS_ERRATA_DTSEC_A004) ||...  */

    return E_OK;
}