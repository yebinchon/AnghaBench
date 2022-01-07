
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_6__ {int ccCapwapReassmTimeout; } ;
struct TYPE_7__ {void* commandSequence; TYPE_1__ hcSpecificData; void* opcode; } ;
typedef TYPE_2__ t_HcFrame ;
typedef scalar_t__ t_Handle ;
typedef int t_FmPcdCcCapwapReassmTimeoutParams ;
typedef int t_FmHc ;
typedef int t_Error ;
typedef int t_DpaaFD ;


 int BUILD_FD (int) ;
 int E_INVALID_HANDLE ;
 int E_NO_MEMORY ;
 int EnQFrm (int *,int *,void*) ;
 TYPE_2__* GetBuf (int *,void**) ;
 int HC_HCOR_GBL ;
 int HC_HCOR_OPCODE_CC_CAPWAP_REASSM_TIMEOUT ;
 int MINOR ;
 int PutBuf (int *,TYPE_2__*,void*) ;
 int RETURN_ERROR (int ,int ,char*) ;
 int SANITY_CHECK_RETURN_VALUE (scalar_t__,int ,int ) ;
 int memcpy (int *,int *,int) ;
 int memset (TYPE_2__*,int ,int) ;

t_Error FmHcPcdCcCapwapTimeoutReassm(t_Handle h_FmHc, t_FmPcdCcCapwapReassmTimeoutParams *p_CcCapwapReassmTimeoutParams )
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
    p_HcFrame->opcode = (uint32_t)(HC_HCOR_GBL | HC_HCOR_OPCODE_CC_CAPWAP_REASSM_TIMEOUT);
    memcpy(&p_HcFrame->hcSpecificData.ccCapwapReassmTimeout, p_CcCapwapReassmTimeoutParams, sizeof(t_FmPcdCcCapwapReassmTimeoutParams));
    p_HcFrame->commandSequence = seqNum;
    BUILD_FD(sizeof(t_HcFrame));

    err = EnQFrm(p_FmHc, &fmFd, seqNum);

    PutBuf(p_FmHc, p_HcFrame, seqNum);
    return err;
}
