
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int p_LowQmPortal; } ;
typedef TYPE_2__ t_QmPortal ;
struct TYPE_10__ {int id; scalar_t__ h_QmPortal; int h_Qm; } ;
typedef TYPE_3__ t_QmCg ;
typedef scalar_t__ t_Handle ;
typedef scalar_t__ t_Error ;
struct qm_mc_result {int verb; scalar_t__ result; } ;
struct TYPE_8__ {int we_mask; int cgid; } ;
struct qm_mc_command {TYPE_1__ initcgr; } ;


 int ASSERT_COND (int) ;
 int E_INVALID_HANDLE ;
 int E_INVALID_STATE ;
 scalar_t__ E_OK ;
 int MAJOR ;
 int MINOR ;
 int NCSW_PLOCK (TYPE_2__*) ;
 int PUNLOCK (TYPE_2__*) ;
 int QM_CGR_WE_MASK ;
 int QM_MCC_VERB_MODIFYCGR ;
 scalar_t__ QM_MCR_RESULT_OK ;
 int QM_MCR_VERB_MASK ;
 scalar_t__ QmFreeCgId (int ,int ) ;
 scalar_t__ QmPortalUnregisterCg (scalar_t__,int ) ;
 int RETURN_ERROR (int ,int ,char*) ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_3__*,int ) ;
 int XX_Free (TYPE_3__*) ;
 int mcr_result_str (scalar_t__) ;
 int qm_mc_commit (int ,int) ;
 struct qm_mc_result* qm_mc_result (int ) ;
 struct qm_mc_command* qm_mc_start (int ) ;

t_Error QM_CG_Free(t_Handle h_QmCg)
{

    t_QmCg *p_QmCg = (t_QmCg *)h_QmCg;
    t_Error err;
    struct qm_mc_command *p_Mcc;
    struct qm_mc_result *p_Mcr;
    t_QmPortal *p_QmPortal;

    SANITY_CHECK_RETURN_ERROR(p_QmCg, E_INVALID_HANDLE);

    p_QmPortal = (t_QmPortal *)p_QmCg->h_QmPortal;

    NCSW_PLOCK(p_QmPortal);
    p_Mcc = qm_mc_start(p_QmPortal->p_LowQmPortal);
    p_Mcc->initcgr.cgid = p_QmCg->id;
    p_Mcc->initcgr.we_mask = QM_CGR_WE_MASK;

    err = QmFreeCgId(p_QmCg->h_Qm, p_QmCg->id);
    if(err)
    {
        XX_Free(p_QmCg);
        PUNLOCK(p_QmPortal);
        RETURN_ERROR(MAJOR, E_INVALID_STATE, ("QmFreeCgId failed"));
    }

    err = QmPortalUnregisterCg(p_QmCg->h_QmPortal, p_QmCg->id);
    if(err)
    {
        XX_Free(p_QmCg);
        PUNLOCK(p_QmPortal);
        RETURN_ERROR(MAJOR, E_INVALID_STATE, ("QmPortalUnregisterCg failed"));
    }

    qm_mc_commit(p_QmPortal->p_LowQmPortal, QM_MCC_VERB_MODIFYCGR);
    while (!(p_Mcr = qm_mc_result(p_QmPortal->p_LowQmPortal))) ;
    ASSERT_COND((p_Mcr->verb & QM_MCR_VERB_MASK) == QM_MCC_VERB_MODIFYCGR);
    if (p_Mcr->result != QM_MCR_RESULT_OK)
    {
        PUNLOCK(p_QmPortal);
        RETURN_ERROR(MINOR, E_INVALID_STATE, ("INITCGR failed: %s", mcr_result_str(p_Mcr->result)));
    }
    PUNLOCK(p_QmPortal);

    XX_Free(p_QmCg);

    return E_OK;
}
