
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_6__ {int majorRev; } ;
struct TYPE_7__ {int macId; int h_Fm; TYPE_1__ fmRevInfo; } ;
struct TYPE_8__ {int h_App; int (* f_Exception ) (int ,int ) ;TYPE_2__ fmMacControllerDriver; struct dtsec_regs* p_MemMap; } ;
typedef TYPE_3__ t_Dtsec ;
struct dtsec_regs {int tpkt; int rctrl; int ievent; } ;


 int ASSERT_COND (int) ;
 int DBG (int ,char*) ;
 int DTSEC_IMASK_ABRTEN ;
 int DTSEC_IMASK_BREN ;
 int DTSEC_IMASK_BTEN ;
 int DTSEC_IMASK_CRLEN ;
 int DTSEC_IMASK_GRSCEN ;
 int DTSEC_IMASK_GTSCEN ;
 int DTSEC_IMASK_IFERREN ;
 int DTSEC_IMASK_LCEN ;
 int DTSEC_IMASK_MAGEN ;
 int DTSEC_IMASK_MMRDEN ;
 int DTSEC_IMASK_MMWREN ;
 int DTSEC_IMASK_MSROEN ;
 int DTSEC_IMASK_RDPEEN ;
 int DTSEC_IMASK_RXCEN ;
 int DTSEC_IMASK_TDPEEN ;
 int DTSEC_IMASK_TXCEN ;
 int DTSEC_IMASK_TXEEN ;
 int DTSEC_IMASK_XFUNEN ;
 int DtsecGetMaxFrameLength (TYPE_3__*) ;
 int FmResetMac (int ,int ,int ) ;
 int GET_UINT32 (int) ;
 int INFO ;
 scalar_t__ MIN (int,int) ;
 int RCTRL_GRS ;
 int UpdateStatistics (TYPE_3__*) ;
 int WRITE_UINT32 (int,int) ;
 int XX_UDelay (int) ;
 int e_FM_MAC_1G ;
 int e_FM_MAC_EX_1G_BAB_RX ;
 int e_FM_MAC_EX_1G_BAB_TX ;
 int e_FM_MAC_EX_1G_COL_RET_LMT ;
 int e_FM_MAC_EX_1G_GRATEFUL_RX_STP_COMPLET ;
 int e_FM_MAC_EX_1G_GRATEFUL_TX_STP_COMPLET ;
 int e_FM_MAC_EX_1G_LATE_COL ;
 int e_FM_MAC_EX_1G_MAG_PCKT ;
 int e_FM_MAC_EX_1G_RX_CTL ;
 int e_FM_MAC_EX_1G_RX_DATA_ERR ;
 int e_FM_MAC_EX_1G_TX_CTL ;
 int e_FM_MAC_EX_1G_TX_DATA_ERR ;
 int e_FM_MAC_EX_1G_TX_ERR ;
 int e_FM_MAC_EX_1G_TX_FIFO_UNDRN ;
 int fman_dtsec_ack_event (struct dtsec_regs*,int) ;
 int fman_dtsec_get_event (struct dtsec_regs*,int) ;
 int fman_dtsec_get_interrupt_mask (struct dtsec_regs*) ;
 int stub1 (int ,int ) ;
 int stub10 (int ,int ) ;
 int stub11 (int ,int ) ;
 int stub12 (int ,int ) ;
 int stub13 (int ,int ) ;
 int stub2 (int ,int ) ;
 int stub3 (int ,int ) ;
 int stub4 (int ,int ) ;
 int stub5 (int ,int ) ;
 int stub6 (int ,int ) ;
 int stub7 (int ,int ) ;
 int stub8 (int ,int ) ;
 int stub9 (int ,int ) ;

__attribute__((used)) static void DtsecIsr(t_Handle h_Dtsec)
{
    t_Dtsec *p_Dtsec = (t_Dtsec *)h_Dtsec;
    uint32_t event;
    struct dtsec_regs *p_DtsecMemMap = p_Dtsec->p_MemMap;


    event = fman_dtsec_get_event(p_DtsecMemMap, (uint32_t)(~(DTSEC_IMASK_MMRDEN | DTSEC_IMASK_MMWREN)));

    event &= fman_dtsec_get_interrupt_mask(p_DtsecMemMap);

    fman_dtsec_ack_event(p_DtsecMemMap, event);

    if (event & DTSEC_IMASK_BREN)
        p_Dtsec->f_Exception(p_Dtsec->h_App, e_FM_MAC_EX_1G_BAB_RX);
    if (event & DTSEC_IMASK_RXCEN)
        p_Dtsec->f_Exception(p_Dtsec->h_App, e_FM_MAC_EX_1G_RX_CTL);
    if (event & DTSEC_IMASK_MSROEN)
        UpdateStatistics(p_Dtsec);
    if (event & DTSEC_IMASK_GTSCEN)
        p_Dtsec->f_Exception(p_Dtsec->h_App, e_FM_MAC_EX_1G_GRATEFUL_TX_STP_COMPLET);
    if (event & DTSEC_IMASK_BTEN)
        p_Dtsec->f_Exception(p_Dtsec->h_App, e_FM_MAC_EX_1G_BAB_TX);
    if (event & DTSEC_IMASK_TXCEN)
        p_Dtsec->f_Exception(p_Dtsec->h_App, e_FM_MAC_EX_1G_TX_CTL);
    if (event & DTSEC_IMASK_TXEEN)
        p_Dtsec->f_Exception(p_Dtsec->h_App, e_FM_MAC_EX_1G_TX_ERR);
    if (event & DTSEC_IMASK_LCEN)
        p_Dtsec->f_Exception(p_Dtsec->h_App, e_FM_MAC_EX_1G_LATE_COL);
    if (event & DTSEC_IMASK_CRLEN)
        p_Dtsec->f_Exception(p_Dtsec->h_App, e_FM_MAC_EX_1G_COL_RET_LMT);
    if (event & DTSEC_IMASK_XFUNEN)
    {
        p_Dtsec->f_Exception(p_Dtsec->h_App, e_FM_MAC_EX_1G_TX_FIFO_UNDRN);
    }
    if (event & DTSEC_IMASK_MAGEN)
        p_Dtsec->f_Exception(p_Dtsec->h_App, e_FM_MAC_EX_1G_MAG_PCKT);
    if (event & DTSEC_IMASK_GRSCEN)
        p_Dtsec->f_Exception(p_Dtsec->h_App, e_FM_MAC_EX_1G_GRATEFUL_RX_STP_COMPLET);
    if (event & DTSEC_IMASK_TDPEEN)
        p_Dtsec->f_Exception(p_Dtsec->h_App, e_FM_MAC_EX_1G_TX_DATA_ERR);
    if (event & DTSEC_IMASK_RDPEEN)
        p_Dtsec->f_Exception(p_Dtsec->h_App, e_FM_MAC_EX_1G_RX_DATA_ERR);


    ASSERT_COND(!(event & DTSEC_IMASK_ABRTEN));
    ASSERT_COND(!(event & DTSEC_IMASK_IFERREN));
}
