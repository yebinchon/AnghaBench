
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_2__ {int h_App; int (* f_Exception ) (int ,int ) ;scalar_t__ ptpTsuEnabled; struct dtsec_regs* p_MemMap; } ;
typedef TYPE_1__ t_Dtsec ;
struct dtsec_regs {int dummy; } ;


 int ASSERT_COND (int) ;
 int TMR_PEVENT_TSRE ;
 int e_FM_MAC_EX_1G_1588_TS_RX_ERR ;
 int fman_dtsec_check_and_clear_tmr_event (struct dtsec_regs*) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void Dtsec1588Isr(t_Handle h_Dtsec)
{
    t_Dtsec *p_Dtsec = (t_Dtsec *)h_Dtsec;
    uint32_t event;
    struct dtsec_regs *p_DtsecMemMap = p_Dtsec->p_MemMap;

    if (p_Dtsec->ptpTsuEnabled)
    {
        event = fman_dtsec_check_and_clear_tmr_event(p_DtsecMemMap);

        if (event)
        {
            ASSERT_COND(event & TMR_PEVENT_TSRE);
            p_Dtsec->f_Exception(p_Dtsec->h_App, e_FM_MAC_EX_1G_1588_TS_RX_ERR);
        }
    }
}
