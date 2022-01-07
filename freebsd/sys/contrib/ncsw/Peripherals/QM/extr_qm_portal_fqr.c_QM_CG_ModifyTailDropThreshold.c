
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_16__ {int p_LowQmPortal; } ;
typedef TYPE_6__ t_QmPortal ;
struct TYPE_17__ {int id; scalar_t__ h_QmPortal; } ;
typedef TYPE_7__ t_QmCg ;
typedef scalar_t__ t_Handle ;
typedef int t_Error ;
struct TYPE_11__ {int cstd_en; } ;
struct TYPE_12__ {TYPE_1__ cgr; } ;
struct qm_mc_result {int verb; scalar_t__ result; TYPE_2__ querycgr; } ;
struct TYPE_13__ {int TA; int Tn; } ;
struct TYPE_14__ {TYPE_3__ cs_thres; } ;
struct TYPE_15__ {TYPE_4__ cgr; int we_mask; int cgid; } ;
struct qm_mc_command {TYPE_5__ initcgr; } ;


 int ABS (int) ;
 int ASSERT_COND (int) ;
 int E_INVALID_HANDLE ;
 int E_INVALID_STATE ;
 int E_OK ;
 int MINOR ;
 int NCSW_PLOCK (TYPE_6__*) ;
 int PUNLOCK (TYPE_6__*) ;
 int QM_CGR_WE_CS_THRES ;
 int QM_MCC_VERB_MODIFYCGR ;
 int QM_MCC_VERB_QUERYCGR ;
 scalar_t__ QM_MCR_RESULT_OK ;
 int QM_MCR_VERB_MASK ;
 int RETURN_ERROR (int ,int ,char*) ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_7__*,int ) ;
 int mcr_result_str (scalar_t__) ;
 int qm_mc_commit (int ,int) ;
 struct qm_mc_result* qm_mc_result (int ) ;
 struct qm_mc_command* qm_mc_start (int ) ;

t_Error QM_CG_ModifyTailDropThreshold(t_Handle h_QmCg, uint32_t threshold)
{
    t_QmCg *p_QmCg = (t_QmCg *)h_QmCg;
    struct qm_mc_command *p_Mcc;
    struct qm_mc_result *p_Mcr;
    t_QmPortal *p_QmPortal;
    uint32_t tmpA, tmpN, ta=0, tn=0;
    int gap, tmp;

    SANITY_CHECK_RETURN_ERROR(p_QmCg, E_INVALID_HANDLE);

    p_QmPortal = (t_QmPortal *)p_QmCg->h_QmPortal;

    NCSW_PLOCK(p_QmPortal);
    p_Mcc = qm_mc_start(p_QmPortal->p_LowQmPortal);
    p_Mcc->initcgr.cgid = p_QmCg->id;

    qm_mc_commit(p_QmPortal->p_LowQmPortal, QM_MCC_VERB_QUERYCGR);
    while (!(p_Mcr = qm_mc_result(p_QmPortal->p_LowQmPortal))) ;
    ASSERT_COND((p_Mcr->verb & QM_MCR_VERB_MASK) == QM_MCC_VERB_QUERYCGR);
    if (p_Mcr->result != QM_MCR_RESULT_OK)
    {
        PUNLOCK(p_QmPortal);
        RETURN_ERROR(MINOR, E_INVALID_STATE, ("QM_MCC_VERB_QUERYCGR failed: %s", mcr_result_str(p_Mcr->result)));
    }

    if(!p_Mcr->querycgr.cgr.cstd_en)
    {
        PUNLOCK(p_QmPortal);
        RETURN_ERROR(MINOR, E_INVALID_STATE, ("Tail Drop is not enabled!"));
    }

    p_Mcc = qm_mc_start(p_QmPortal->p_LowQmPortal);
    p_Mcc->initcgr.cgid = p_QmCg->id;
    p_Mcc->initcgr.we_mask |= QM_CGR_WE_CS_THRES;


    gap = (int)threshold;
    for (tmpA=0 ; tmpA<256; tmpA++ )
        for (tmpN=0 ; tmpN<32; tmpN++ )
        {
            tmp = ABS((int)(threshold - tmpA*(1<<tmpN)));
            if (tmp < gap)
            {
               ta = tmpA;
               tn = tmpN;
               gap = tmp;
            }
        }
    p_Mcc->initcgr.cgr.cs_thres.TA = ta;
    p_Mcc->initcgr.cgr.cs_thres.Tn = tn;

    qm_mc_commit(p_QmPortal->p_LowQmPortal, QM_MCC_VERB_MODIFYCGR);
    while (!(p_Mcr = qm_mc_result(p_QmPortal->p_LowQmPortal))) ;
    ASSERT_COND((p_Mcr->verb & QM_MCR_VERB_MASK) == QM_MCC_VERB_MODIFYCGR);
    if (p_Mcr->result != QM_MCR_RESULT_OK)
    {
        PUNLOCK(p_QmPortal);
        RETURN_ERROR(MINOR, E_INVALID_STATE, ("INITCGR failed: %s", mcr_result_str(p_Mcr->result)));
    }
    PUNLOCK(p_QmPortal);

    return E_OK;
}
