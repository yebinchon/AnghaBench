
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int h_App; int (* f_Exception ) (int ,int ) ;int p_MemMap; } ;
typedef TYPE_1__ t_Memac ;
typedef scalar_t__ t_Handle ;


 int MEMAC_ALL_ERRS_IMASK ;
 int MEMAC_IEVNT_RX_ECC_ER ;
 int MEMAC_IEVNT_TS_ECC_ER ;
 int MEMAC_IEVNT_TX_ECC_ER ;
 int e_FM_MAC_EX_10G_1TX_ECC_ER ;
 int e_FM_MAC_EX_10G_RX_ECC_ER ;
 int e_FM_MAC_EX_TS_FIFO_ECC_ERR ;
 int fman_memac_ack_event (int ,int) ;
 int fman_memac_get_event (int ,int) ;
 int fman_memac_get_interrupt_mask (int ) ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;
 int stub3 (int ,int ) ;

__attribute__((used)) static void MemacErrException(t_Handle h_Memac)
{
    t_Memac *p_Memac = (t_Memac *)h_Memac;
    uint32_t event, imask;

    event = fman_memac_get_event(p_Memac->p_MemMap, 0xffffffff);
    imask = fman_memac_get_interrupt_mask(p_Memac->p_MemMap);





    event &= ((imask & MEMAC_ALL_ERRS_IMASK) >> 16);

    fman_memac_ack_event(p_Memac->p_MemMap, event);

    if (event & MEMAC_IEVNT_TS_ECC_ER)
        p_Memac->f_Exception(p_Memac->h_App, e_FM_MAC_EX_TS_FIFO_ECC_ERR);
    if (event & MEMAC_IEVNT_TX_ECC_ER)
        p_Memac->f_Exception(p_Memac->h_App, e_FM_MAC_EX_10G_1TX_ECC_ER);
    if (event & MEMAC_IEVNT_RX_ECC_ER)
        p_Memac->f_Exception(p_Memac->h_App, e_FM_MAC_EX_10G_RX_ECC_ER);
}
