
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int options; TYPE_4__* p_LowQmPortal; } ;
typedef TYPE_2__ t_QmPortal ;
struct TYPE_10__ {int irq; } ;
struct TYPE_12__ {TYPE_1__ config; } ;


 int QMAN_PORTAL_FLAG_IRQ ;
 int XX_DisableIntr (int ) ;
 int XX_FreeIntr (int ) ;
 int qmPortalEqcrCceUpdate (TYPE_4__*) ;
 int qm_dqrr_finish (TYPE_4__*) ;
 int qm_eqcr_finish (TYPE_4__*) ;
 int qm_isr_finish (TYPE_4__*) ;
 int qm_mc_finish (TYPE_4__*) ;
 int qm_mr_finish (TYPE_4__*) ;

__attribute__((used)) static void qman_destroy_portal(t_QmPortal *p_QmPortal)
{


    qmPortalEqcrCceUpdate(p_QmPortal->p_LowQmPortal);
    if (p_QmPortal->options & QMAN_PORTAL_FLAG_IRQ)
    {
        XX_DisableIntr(p_QmPortal->p_LowQmPortal->config.irq);
        XX_FreeIntr(p_QmPortal->p_LowQmPortal->config.irq);
    }
    qm_isr_finish(p_QmPortal->p_LowQmPortal);
    qm_mc_finish(p_QmPortal->p_LowQmPortal);
    qm_mr_finish(p_QmPortal->p_LowQmPortal);
    qm_dqrr_finish(p_QmPortal->p_LowQmPortal);
    qm_eqcr_finish(p_QmPortal->p_LowQmPortal);
}
