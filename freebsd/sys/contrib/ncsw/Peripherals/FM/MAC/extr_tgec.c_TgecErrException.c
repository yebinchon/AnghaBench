
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int h_App; int (* f_Exception ) (int ,int ) ;struct tgec_regs* p_MemMap; } ;
typedef TYPE_1__ t_Tgec ;
typedef scalar_t__ t_Handle ;
struct tgec_regs {int dummy; } ;


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
 int e_FM_MAC_EX_10G_1TX_ECC_ER ;
 int e_FM_MAC_EX_10G_LOC_FAULT ;
 int e_FM_MAC_EX_10G_REM_FAULT ;
 int e_FM_MAC_EX_10G_RX_ALIGN_ER ;
 int e_FM_MAC_EX_10G_RX_CRC_ER ;
 int e_FM_MAC_EX_10G_RX_ECC_ER ;
 int e_FM_MAC_EX_10G_RX_FIFO_OVFL ;
 int e_FM_MAC_EX_10G_RX_FRAG_FRM ;
 int e_FM_MAC_EX_10G_RX_JAB_FRM ;
 int e_FM_MAC_EX_10G_RX_LEN_ER ;
 int e_FM_MAC_EX_10G_RX_OVRSZ_FRM ;
 int e_FM_MAC_EX_10G_RX_RUNT_FRM ;
 int e_FM_MAC_EX_10G_TX_ER ;
 int e_FM_MAC_EX_10G_TX_FIFO_OVFL ;
 int e_FM_MAC_EX_10G_TX_FIFO_UNFL ;
 int fman_tgec_ack_event (struct tgec_regs*,int) ;
 int fman_tgec_get_event (struct tgec_regs*,int) ;
 int fman_tgec_get_interrupt_mask (struct tgec_regs*) ;
 int stub1 (int ,int ) ;
 int stub10 (int ,int ) ;
 int stub11 (int ,int ) ;
 int stub12 (int ,int ) ;
 int stub13 (int ,int ) ;
 int stub14 (int ,int ) ;
 int stub15 (int ,int ) ;
 int stub2 (int ,int ) ;
 int stub3 (int ,int ) ;
 int stub4 (int ,int ) ;
 int stub5 (int ,int ) ;
 int stub6 (int ,int ) ;
 int stub7 (int ,int ) ;
 int stub8 (int ,int ) ;
 int stub9 (int ,int ) ;

__attribute__((used)) static void TgecErrException(t_Handle h_Tgec)
{
    t_Tgec *p_Tgec = (t_Tgec *)h_Tgec;
    uint32_t event;
    struct tgec_regs *p_TgecMemMap = p_Tgec->p_MemMap;


    event = fman_tgec_get_event(p_TgecMemMap, ~(TGEC_IMASK_MDIO_SCAN_EVENT | TGEC_IMASK_MDIO_CMD_CMPL));
    event &= fman_tgec_get_interrupt_mask(p_TgecMemMap);

    fman_tgec_ack_event(p_TgecMemMap, event);

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
