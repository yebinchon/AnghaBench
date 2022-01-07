
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int h_App; int (* f_Event ) (int ,int ) ;struct tgec_regs* p_MemMap; } ;
typedef TYPE_1__ t_Tgec ;
typedef scalar_t__ t_Handle ;
struct tgec_regs {int dummy; } ;


 int TGEC_IMASK_MDIO_CMD_CMPL ;
 int TGEC_IMASK_MDIO_SCAN_EVENT ;
 int e_FM_MAC_EX_10G_MDIO_CMD_CMPL ;
 int e_FM_MAC_EX_10G_MDIO_SCAN_EVENTMDIO ;
 int fman_tgec_ack_event (struct tgec_regs*,int) ;
 int fman_tgec_get_event (struct tgec_regs*,int) ;
 int fman_tgec_get_interrupt_mask (struct tgec_regs*) ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;

__attribute__((used)) static void TgecException(t_Handle h_Tgec)
{
     t_Tgec *p_Tgec = (t_Tgec *)h_Tgec;
     uint32_t event;
     struct tgec_regs *p_TgecMemMap = p_Tgec->p_MemMap;


     event = fman_tgec_get_event(p_TgecMemMap, (TGEC_IMASK_MDIO_SCAN_EVENT | TGEC_IMASK_MDIO_CMD_CMPL));
     event &= fman_tgec_get_interrupt_mask(p_TgecMemMap);

     fman_tgec_ack_event(p_TgecMemMap, event);

     if (event & TGEC_IMASK_MDIO_SCAN_EVENT)
         p_Tgec->f_Event(p_Tgec->h_App, e_FM_MAC_EX_10G_MDIO_SCAN_EVENTMDIO);
     if (event & TGEC_IMASK_MDIO_CMD_CMPL)
         p_Tgec->f_Event(p_Tgec->h_App, e_FM_MAC_EX_10G_MDIO_CMD_CMPL);
}
