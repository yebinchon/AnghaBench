
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_7__ {int p_LowQmPortal; } ;
typedef TYPE_2__ t_QmPortal ;
typedef int t_Error ;
struct qman_fq {int fqid; } ;
struct qm_mcr_queryfq_np {int dummy; } ;
struct qm_mc_result {int verb; scalar_t__ result; struct qm_mcr_queryfq_np queryfq_np; } ;
struct TYPE_6__ {int fqid; } ;
struct qm_mc_command {TYPE_1__ queryfq_np; } ;


 int ASSERT_COND (int) ;
 int E_INVALID_STATE ;
 int E_OK ;
 int MINOR ;
 int NCSW_PLOCK (TYPE_2__*) ;
 int PUNLOCK (TYPE_2__*) ;
 int QM_MCC_VERB_QUERYFQ_NP ;
 scalar_t__ QM_MCR_RESULT_OK ;
 int QM_MCR_VERB_MASK ;
 int QM_MCR_VERB_QUERYFQ_NP ;
 int RETURN_ERROR (int ,int ,char*) ;
 int mcr_result_str (scalar_t__) ;
 int qm_mc_commit (int ,int ) ;
 struct qm_mc_result* qm_mc_result (int ) ;
 struct qm_mc_command* qm_mc_start (int ) ;

__attribute__((used)) static t_Error qman_query_fq_np(t_QmPortal *p_QmPortal, struct qman_fq *p_Fq, struct qm_mcr_queryfq_np *p_Np)
{
    struct qm_mc_command *p_Mcc;
    struct qm_mc_result *p_Mcr;
    uint8_t res;

    NCSW_PLOCK(p_QmPortal);
    p_Mcc = qm_mc_start(p_QmPortal->p_LowQmPortal);
    p_Mcc->queryfq_np.fqid = p_Fq->fqid;
    qm_mc_commit(p_QmPortal->p_LowQmPortal, QM_MCC_VERB_QUERYFQ_NP);
    while (!(p_Mcr = qm_mc_result(p_QmPortal->p_LowQmPortal))) ;
    ASSERT_COND((p_Mcr->verb & QM_MCR_VERB_MASK) == QM_MCR_VERB_QUERYFQ_NP);
    res = p_Mcr->result;
    if (res == QM_MCR_RESULT_OK)
        *p_Np = p_Mcr->queryfq_np;
    PUNLOCK(p_QmPortal);
    if (res != QM_MCR_RESULT_OK)
        RETURN_ERROR(MINOR, E_INVALID_STATE, ("QUERYFQ_NP failed: %s\n", mcr_result_str(res)));
    return E_OK;
}
