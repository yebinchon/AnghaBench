
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_25__ {int options; TYPE_3__* p_LowQmPortal; } ;
typedef TYPE_1__ t_QmPortal ;
typedef int t_Error ;
struct qm_portal_config {int irq; } ;
struct TYPE_26__ {struct qm_portal_config config; } ;


 int DEFAULT_portalExceptions ;
 int ERROR_CODE (int ) ;
 int E_INVALID_STATE ;
 int E_OK ;
 int MAJOR ;
 int MINOR ;
 int QMAN_PORTAL_FLAG_DCA ;
 int QMAN_PORTAL_FLAG_DSTASH ;
 int QMAN_PORTAL_FLAG_IRQ ;
 int QMAN_PORTAL_FLAG_RSTASH ;
 int QMAN_PORTAL_FLAG_WAIT ;
 int QM_PIRQ_DQRI ;
 int QM_PIRQ_EQCI ;
 int QM_PIRQ_MRI ;
 int REPORT_ERROR (int ,int ,char*) ;
 int RETURN_ERROR (int ,int ,char*) ;
 int XX_EnableIntr (int ) ;
 int XX_SetIntr (int ,int ,TYPE_1__*) ;
 int e_QmPortalDequeuePullMode ;
 int e_QmPortalDequeuePushMode ;
 int e_QmPortalDqrrCCI ;
 int e_QmPortalDqrrDCA ;
 int e_QmPortalEqcrCCE ;
 int e_QmPortalMrCCI ;
 int e_QmPortalPVB ;
 int portal_isr ;
 int * qm_dqrr_current (TYPE_3__*) ;
 int qm_dqrr_finish (TYPE_3__*) ;
 scalar_t__ qm_dqrr_init (TYPE_3__*,int ,int ,int ,int ,int,int) ;
 int qm_dqrr_sdqcr_set (TYPE_3__*,int) ;
 int qm_dqrr_set_ithresh (TYPE_3__*,int) ;
 int qm_eqcr_finish (TYPE_3__*) ;
 int qm_eqcr_get_fill (TYPE_3__*) ;
 int qm_eqcr_init (TYPE_3__*,int ,int ) ;
 int qm_isr_disable_write (TYPE_3__*,int) ;
 int qm_isr_enable_write (TYPE_3__*,int ) ;
 int qm_isr_finish (TYPE_3__*) ;
 scalar_t__ qm_isr_init (TYPE_3__*) ;
 int qm_isr_set_iperiod (TYPE_3__*,int) ;
 int qm_isr_status_clear (TYPE_3__*,int) ;
 int qm_isr_uninhibit (TYPE_3__*) ;
 int qm_mc_finish (TYPE_3__*) ;
 scalar_t__ qm_mc_init (TYPE_3__*) ;
 int * qm_mr_current (TYPE_3__*) ;
 int qm_mr_finish (TYPE_3__*) ;
 scalar_t__ qm_mr_init (TYPE_3__*,int ,int ) ;
 int qm_mr_set_ithresh (TYPE_3__*,int) ;

__attribute__((used)) static t_Error qman_create_portal(t_QmPortal *p_QmPortal,
                                   uint32_t flags,
                                   uint32_t sdqcrFlags,
                                   uint8_t dqrrSize)
{
    const struct qm_portal_config *p_Config = &(p_QmPortal->p_LowQmPortal->config);
    int ret = 0;
    t_Error err;
    uint32_t isdr;

    if ((err = qm_eqcr_init(p_QmPortal->p_LowQmPortal, e_QmPortalPVB, e_QmPortalEqcrCCE)) != E_OK)
        RETURN_ERROR(MINOR, err, ("Qman EQCR initialization failed\n"));

    if (qm_dqrr_init(p_QmPortal->p_LowQmPortal,
                     sdqcrFlags ? e_QmPortalDequeuePushMode : e_QmPortalDequeuePullMode,
                     e_QmPortalPVB,
                     (flags & QMAN_PORTAL_FLAG_DCA) ? e_QmPortalDqrrDCA : e_QmPortalDqrrCCI,
                     dqrrSize,
                     (flags & QMAN_PORTAL_FLAG_RSTASH) ? 1 : 0,
                     (flags & QMAN_PORTAL_FLAG_DSTASH) ? 1 : 0)) {
        REPORT_ERROR(MAJOR, E_INVALID_STATE, ("DQRR initialization failed"));
        goto fail_dqrr;
    }

    if (qm_mr_init(p_QmPortal->p_LowQmPortal, e_QmPortalPVB, e_QmPortalMrCCI)) {
        REPORT_ERROR(MAJOR, E_INVALID_STATE, ("MR initialization failed"));
        goto fail_mr;
    }
    if (qm_mc_init(p_QmPortal->p_LowQmPortal)) {
        REPORT_ERROR(MAJOR, E_INVALID_STATE, ("MC initialization failed"));
        goto fail_mc;
    }
    if (qm_isr_init(p_QmPortal->p_LowQmPortal)) {
        REPORT_ERROR(MAJOR, E_INVALID_STATE, ("ISR initialization failed"));
        goto fail_isr;
    }

    qm_dqrr_set_ithresh(p_QmPortal->p_LowQmPortal, 12);
    qm_mr_set_ithresh(p_QmPortal->p_LowQmPortal, 4);
    qm_isr_set_iperiod(p_QmPortal->p_LowQmPortal, 100);
    p_QmPortal->options = flags;
    isdr = 0xffffffff;
    qm_isr_status_clear(p_QmPortal->p_LowQmPortal, 0xffffffff);
    qm_isr_enable_write(p_QmPortal->p_LowQmPortal, DEFAULT_portalExceptions);
    qm_isr_disable_write(p_QmPortal->p_LowQmPortal, isdr);
    if (flags & QMAN_PORTAL_FLAG_IRQ)
    {
        XX_SetIntr(p_Config->irq, portal_isr, p_QmPortal);
        XX_EnableIntr(p_Config->irq);
        qm_isr_uninhibit(p_QmPortal->p_LowQmPortal);
    } else

        flags &= ~QMAN_PORTAL_FLAG_WAIT;

    isdr ^= QM_PIRQ_EQCI;
    qm_isr_disable_write(p_QmPortal->p_LowQmPortal, isdr);
    ret = qm_eqcr_get_fill(p_QmPortal->p_LowQmPortal);
    if (ret) {
        REPORT_ERROR(MAJOR, E_INVALID_STATE, ("EQCR unclean"));
        goto fail_eqcr_empty;
    }
    isdr ^= (QM_PIRQ_DQRI | QM_PIRQ_MRI);
    qm_isr_disable_write(p_QmPortal->p_LowQmPortal, isdr);
    if (qm_dqrr_current(p_QmPortal->p_LowQmPortal) != ((void*)0))
    {
        REPORT_ERROR(MAJOR, E_INVALID_STATE, ("DQRR unclean"));
goto fail_dqrr_mr_empty;
    }
    if (qm_mr_current(p_QmPortal->p_LowQmPortal) != ((void*)0))
    {
        REPORT_ERROR(MAJOR, E_INVALID_STATE, ("MR unclean"));
goto fail_dqrr_mr_empty;
    }
    qm_isr_disable_write(p_QmPortal->p_LowQmPortal, 0);
    qm_dqrr_sdqcr_set(p_QmPortal->p_LowQmPortal, sdqcrFlags);
    return E_OK;
fail_dqrr_mr_empty:
fail_eqcr_empty:
    qm_isr_finish(p_QmPortal->p_LowQmPortal);
fail_isr:
    qm_mc_finish(p_QmPortal->p_LowQmPortal);
fail_mc:
    qm_mr_finish(p_QmPortal->p_LowQmPortal);
fail_mr:
    qm_dqrr_finish(p_QmPortal->p_LowQmPortal);
fail_dqrr:
    qm_eqcr_finish(p_QmPortal->p_LowQmPortal);
    return ERROR_CODE(E_INVALID_STATE);
}
