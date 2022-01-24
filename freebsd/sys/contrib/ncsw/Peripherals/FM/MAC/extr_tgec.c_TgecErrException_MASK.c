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
struct TYPE_2__ {int /*<<< orphan*/  h_App; int /*<<< orphan*/  (* f_Exception ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;struct tgec_regs* p_MemMap; } ;
typedef  TYPE_1__ t_Tgec ;
typedef  scalar_t__ t_Handle ;
struct tgec_regs {int dummy; } ;

/* Variables and functions */
 int TGEC_IMASK_LOC_FAULT ; 
 int TGEC_IMASK_MDIO_CMD_CMPL ; 
 int TGEC_IMASK_MDIO_SCAN_EVENT ; 
 int TGEC_IMASK_REM_FAULT ; 
 int TGEC_IMASK_RX_ALIGN_ER ; 
 int TGEC_IMASK_RX_CRC_ER ; 
 int TGEC_IMASK_RX_ECC_ER ; 
 int TGEC_IMASK_RX_FIFO_OVFL ; 
 int TGEC_IMASK_RX_FRAG_FRM ; 
 int TGEC_IMASK_RX_JAB_FRM ; 
 int TGEC_IMASK_RX_LEN_ER ; 
 int TGEC_IMASK_RX_OVRSZ_FRM ; 
 int TGEC_IMASK_RX_RUNT_FRM ; 
 int TGEC_IMASK_TX_ECC_ER ; 
 int TGEC_IMASK_TX_ER ; 
 int TGEC_IMASK_TX_FIFO_OVFL ; 
 int TGEC_IMASK_TX_FIFO_UNFL ; 
 int /*<<< orphan*/  e_FM_MAC_EX_10G_1TX_ECC_ER ; 
 int /*<<< orphan*/  e_FM_MAC_EX_10G_LOC_FAULT ; 
 int /*<<< orphan*/  e_FM_MAC_EX_10G_REM_FAULT ; 
 int /*<<< orphan*/  e_FM_MAC_EX_10G_RX_ALIGN_ER ; 
 int /*<<< orphan*/  e_FM_MAC_EX_10G_RX_CRC_ER ; 
 int /*<<< orphan*/  e_FM_MAC_EX_10G_RX_ECC_ER ; 
 int /*<<< orphan*/  e_FM_MAC_EX_10G_RX_FIFO_OVFL ; 
 int /*<<< orphan*/  e_FM_MAC_EX_10G_RX_FRAG_FRM ; 
 int /*<<< orphan*/  e_FM_MAC_EX_10G_RX_JAB_FRM ; 
 int /*<<< orphan*/  e_FM_MAC_EX_10G_RX_LEN_ER ; 
 int /*<<< orphan*/  e_FM_MAC_EX_10G_RX_OVRSZ_FRM ; 
 int /*<<< orphan*/  e_FM_MAC_EX_10G_RX_RUNT_FRM ; 
 int /*<<< orphan*/  e_FM_MAC_EX_10G_TX_ER ; 
 int /*<<< orphan*/  e_FM_MAC_EX_10G_TX_FIFO_OVFL ; 
 int /*<<< orphan*/  e_FM_MAC_EX_10G_TX_FIFO_UNFL ; 
 int /*<<< orphan*/  FUNC0 (struct tgec_regs*,int) ; 
 int FUNC1 (struct tgec_regs*,int) ; 
 int FUNC2 (struct tgec_regs*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC18(t_Handle h_Tgec)
{
    t_Tgec              *p_Tgec = (t_Tgec *)h_Tgec;
    uint32_t            event;
    struct tgec_regs    *p_TgecMemMap = p_Tgec->p_MemMap;

    /* do not handle MDIO events */
    event = FUNC1(p_TgecMemMap, ~(TGEC_IMASK_MDIO_SCAN_EVENT | TGEC_IMASK_MDIO_CMD_CMPL));
    event &= FUNC2(p_TgecMemMap);

    FUNC0(p_TgecMemMap, event);

    if (event & TGEC_IMASK_REM_FAULT)
        p_Tgec->f_Exception(p_Tgec->h_App, e_FM_MAC_EX_10G_REM_FAULT);
    if (event & TGEC_IMASK_LOC_FAULT)
        p_Tgec->f_Exception(p_Tgec->h_App, e_FM_MAC_EX_10G_LOC_FAULT);
    if (event & TGEC_IMASK_TX_ECC_ER)
        p_Tgec->f_Exception(p_Tgec->h_App, e_FM_MAC_EX_10G_1TX_ECC_ER);
    if (event & TGEC_IMASK_TX_FIFO_UNFL)
        p_Tgec->f_Exception(p_Tgec->h_App, e_FM_MAC_EX_10G_TX_FIFO_UNFL);
    if (event & TGEC_IMASK_TX_FIFO_OVFL)
        p_Tgec->f_Exception(p_Tgec->h_App, e_FM_MAC_EX_10G_TX_FIFO_OVFL);
    if (event & TGEC_IMASK_TX_ER)
        p_Tgec->f_Exception(p_Tgec->h_App, e_FM_MAC_EX_10G_TX_ER);
    if (event & TGEC_IMASK_RX_FIFO_OVFL)
        p_Tgec->f_Exception(p_Tgec->h_App, e_FM_MAC_EX_10G_RX_FIFO_OVFL);
    if (event & TGEC_IMASK_RX_ECC_ER)
        p_Tgec->f_Exception(p_Tgec->h_App, e_FM_MAC_EX_10G_RX_ECC_ER);
    if (event & TGEC_IMASK_RX_JAB_FRM)
        p_Tgec->f_Exception(p_Tgec->h_App, e_FM_MAC_EX_10G_RX_JAB_FRM);
    if (event & TGEC_IMASK_RX_OVRSZ_FRM)
        p_Tgec->f_Exception(p_Tgec->h_App, e_FM_MAC_EX_10G_RX_OVRSZ_FRM);
    if (event & TGEC_IMASK_RX_RUNT_FRM)
        p_Tgec->f_Exception(p_Tgec->h_App, e_FM_MAC_EX_10G_RX_RUNT_FRM);
    if (event & TGEC_IMASK_RX_FRAG_FRM)
        p_Tgec->f_Exception(p_Tgec->h_App, e_FM_MAC_EX_10G_RX_FRAG_FRM);
    if (event & TGEC_IMASK_RX_LEN_ER)
        p_Tgec->f_Exception(p_Tgec->h_App, e_FM_MAC_EX_10G_RX_LEN_ER);
    if (event & TGEC_IMASK_RX_CRC_ER)
        p_Tgec->f_Exception(p_Tgec->h_App, e_FM_MAC_EX_10G_RX_CRC_ER);
    if (event & TGEC_IMASK_RX_ALIGN_ER)
        p_Tgec->f_Exception(p_Tgec->h_App, e_FM_MAC_EX_10G_RX_ALIGN_ER);
}