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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {int majorRev; } ;
struct TYPE_3__ {struct tgec_cfg* h_Fm; TYPE_2__ fmRevInfo; int /*<<< orphan*/  macId; } ;
struct tgec_cfg {int exceptions; scalar_t__ mdioIrq; struct tgec_cfg* p_TgecDriverParam; int /*<<< orphan*/  macId; TYPE_1__ fmMacControllerDriver; void* p_UnicastAddrHash; void* p_MulticastAddrHash; int /*<<< orphan*/  p_MemMap; int /*<<< orphan*/  max_frame_length; int /*<<< orphan*/  skip_fman11_workaround; int /*<<< orphan*/  addr; } ;
typedef  struct tgec_cfg t_Tgec ;
typedef  scalar_t__ t_Handle ;
typedef  scalar_t__ t_Error ;
typedef  scalar_t__ t_EnetAddr ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tgec_cfg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CheckInitParameters ; 
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_INVALID_STATE ; 
 scalar_t__ E_NO_MEMORY ; 
 scalar_t__ E_OK ; 
 int /*<<< orphan*/  FUNC2 (struct tgec_cfg*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct tgec_cfg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tgec_cfg*) ; 
 scalar_t__ FUNC4 (struct tgec_cfg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tgec_cfg*) ; 
 int /*<<< orphan*/  HASH_TABLE_SIZE ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  MINOR ; 
 scalar_t__ NO_IRQ ; 
 char* NO_MSG ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct tgec_cfg*,int /*<<< orphan*/ ) ; 
 int TGEC_IMASK_LOC_FAULT ; 
 int TGEC_IMASK_REM_FAULT ; 
 int /*<<< orphan*/  TgecErrException ; 
 int /*<<< orphan*/  TgecException ; 
 scalar_t__ FUNC10 (struct tgec_cfg*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct tgec_cfg*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ ,struct tgec_cfg*) ; 
 int /*<<< orphan*/  e_FM_INTR_TYPE_ERR ; 
 int /*<<< orphan*/  e_FM_MAC_10G ; 
 int /*<<< orphan*/  e_FM_MOD_10G_MAC ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,struct tgec_cfg*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static t_Error FUNC17(t_Handle h_Tgec)
{
    t_Tgec                  *p_Tgec = (t_Tgec *)h_Tgec;
    struct tgec_cfg         *p_TgecDriverParam;
    t_EnetAddr              ethAddr;
    t_Error                 err;

    FUNC9(p_Tgec, E_INVALID_HANDLE);
    FUNC9(p_Tgec->p_TgecDriverParam, E_INVALID_STATE);
    FUNC9(p_Tgec->fmMacControllerDriver.h_Fm, E_INVALID_HANDLE);

    FUNC2(p_Tgec->fmMacControllerDriver.h_Fm, &p_Tgec->fmMacControllerDriver.fmRevInfo);
    FUNC1(p_Tgec, CheckInitParameters);

    p_TgecDriverParam = p_Tgec->p_TgecDriverParam;

    FUNC6(p_Tgec->addr, ethAddr);
    FUNC16(p_Tgec->p_MemMap, (uint8_t *)ethAddr);

    /* interrupts */
#ifdef FM_10G_REM_N_LCL_FLT_EX_10GMAC_ERRATA_SW005
    {
        if (p_Tgec->fmMacControllerDriver.fmRevInfo.majorRev <=2)
            p_Tgec->exceptions &= ~(TGEC_IMASK_REM_FAULT | TGEC_IMASK_LOC_FAULT);
    }
#endif /* FM_10G_REM_N_LCL_FLT_EX_10GMAC_ERRATA_SW005 */

#ifdef FM_TX_ECC_FRMS_ERRATA_10GMAC_A004
    if (!p_Tgec->p_TgecDriverParam->skip_fman11_workaround &&
        ((err = TgecTxEccWorkaround(p_Tgec)) != E_OK))
    {
        FreeInitResources(p_Tgec);
        REPORT_ERROR(MINOR, err, ("TgecTxEccWorkaround FAILED"));
    }
#endif /* FM_TX_ECC_FRMS_ERRATA_10GMAC_A004 */

    err = FUNC14(p_Tgec->p_MemMap, p_TgecDriverParam, p_Tgec->exceptions);
    if (err)
    {
        FUNC5(p_Tgec);
        FUNC8(MAJOR, err, ("This TGEC version does not support the required i/f mode"));
    }

    /* Max Frame Length */
    err = FUNC4(p_Tgec->fmMacControllerDriver.h_Fm,
                           e_FM_MAC_10G,
                           p_Tgec->fmMacControllerDriver.macId,
                           p_TgecDriverParam->max_frame_length);
    if (err != E_OK)
    {
        FUNC5(p_Tgec);
        FUNC8(MINOR, err, NO_MSG);
    }
/* we consider having no IPC a non crasher... */

#ifdef FM_TX_FIFO_CORRUPTION_ERRATA_10GMAC_A007
    if (p_Tgec->fmMacControllerDriver.fmRevInfo.majorRev == 2)
        fman_tgec_set_erratum_tx_fifo_corruption_10gmac_a007(p_Tgec->p_MemMap);
#endif /* FM_TX_FIFO_CORRUPTION_ERRATA_10GMAC_A007 */

    p_Tgec->p_MulticastAddrHash = FUNC0(HASH_TABLE_SIZE);
    if (!p_Tgec->p_MulticastAddrHash)
    {
        FUNC5(p_Tgec);
        FUNC8(MAJOR, E_NO_MEMORY, ("allocation hash table is FAILED"));
    }

    p_Tgec->p_UnicastAddrHash = FUNC0(HASH_TABLE_SIZE);
    if (!p_Tgec->p_UnicastAddrHash)
    {
        FUNC5(p_Tgec);
        FUNC8(MAJOR, E_NO_MEMORY, ("allocation hash table is FAILED"));
    }

    FUNC3(p_Tgec->fmMacControllerDriver.h_Fm,
                   e_FM_MOD_10G_MAC,
                   p_Tgec->macId,
                   e_FM_INTR_TYPE_ERR,
                   TgecErrException,
                   p_Tgec);
    if (p_Tgec->mdioIrq != NO_IRQ)
    {
        FUNC13(p_Tgec->mdioIrq, TgecException, p_Tgec);
        FUNC11(p_Tgec->mdioIrq);
    }

    FUNC12(p_TgecDriverParam);
    p_Tgec->p_TgecDriverParam = NULL;

    return E_OK;
}