
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef void* uint32_t ;
struct TYPE_7__ {int actionReg; int extraReg; void* commandSequence; void* opcode; } ;
typedef TYPE_1__ t_HcFrame ;
typedef scalar_t__ t_Handle ;
struct TYPE_8__ {int tsbs; int iprcpt; scalar_t__ activate; } ;
typedef TYPE_2__ t_FmPcdCcReassmTimeoutParams ;
typedef int t_FmHc ;
typedef int t_Error ;
typedef int t_DpaaFD ;


 int BUILD_FD (int) ;
 int E_INVALID_HANDLE ;
 int E_NO_MEMORY ;
 int E_OK ;
 int EnQFrm (int *,int *,void*) ;
 TYPE_1__* GetBuf (int *,void**) ;
 int HC_HCOR_ACTION_REG_REASSM_TIMEOUT_ACTIVE_SHIFT ;
 int HC_HCOR_ACTION_REG_REASSM_TIMEOUT_RES_MASK ;
 int HC_HCOR_ACTION_REG_REASSM_TIMEOUT_RES_SHIFT ;
 int HC_HCOR_EXTRA_REG_REASSM_TIMEOUT_TSBS_SHIFT ;
 int HC_HCOR_GBL ;
 int HC_HCOR_OPCODE_CC_REASSM_TIMEOUT ;
 int MINOR ;
 char* NO_MSG ;
 int PutBuf (int *,TYPE_1__*,void*) ;
 int RETURN_ERROR (int ,int ,char*) ;
 int SANITY_CHECK_RETURN_VALUE (scalar_t__,int ,int ) ;
 int memset (TYPE_1__*,int ,int) ;

t_Error FmHcPcdCcTimeoutReassm(t_Handle h_FmHc, t_FmPcdCcReassmTimeoutParams *p_CcReassmTimeoutParams, uint8_t *p_Result)
{
    t_FmHc *p_FmHc = (t_FmHc*)h_FmHc;
    t_HcFrame *p_HcFrame;
    t_DpaaFD fmFd;
    t_Error err;
    uint32_t seqNum;

    SANITY_CHECK_RETURN_VALUE(h_FmHc, E_INVALID_HANDLE,0);

    p_HcFrame = GetBuf(p_FmHc, &seqNum);
    if (!p_HcFrame)
        RETURN_ERROR(MINOR, E_NO_MEMORY, ("HC Frame object"));

    memset(p_HcFrame, 0, sizeof(t_HcFrame));
    p_HcFrame->opcode = (uint32_t)(HC_HCOR_GBL | HC_HCOR_OPCODE_CC_REASSM_TIMEOUT);
    p_HcFrame->actionReg = (uint32_t)((p_CcReassmTimeoutParams->activate ? 0 : 1) << HC_HCOR_ACTION_REG_REASSM_TIMEOUT_ACTIVE_SHIFT);
    p_HcFrame->extraReg = (p_CcReassmTimeoutParams->tsbs << HC_HCOR_EXTRA_REG_REASSM_TIMEOUT_TSBS_SHIFT) | p_CcReassmTimeoutParams->iprcpt;
    p_HcFrame->commandSequence = seqNum;

    BUILD_FD(sizeof(t_HcFrame));
    if ((err = EnQFrm(p_FmHc, &fmFd, seqNum)) != E_OK)
    {
        PutBuf(p_FmHc, p_HcFrame, seqNum);
        RETURN_ERROR(MINOR, err, NO_MSG);
    }

    *p_Result = (uint8_t)
        ((p_HcFrame->actionReg >> HC_HCOR_ACTION_REG_REASSM_TIMEOUT_RES_SHIFT) & HC_HCOR_ACTION_REG_REASSM_TIMEOUT_RES_MASK);

    PutBuf(p_FmHc, p_HcFrame, seqNum);
    return E_OK;
}
