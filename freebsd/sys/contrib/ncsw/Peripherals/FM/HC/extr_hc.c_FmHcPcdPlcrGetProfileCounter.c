
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* uint32_t ;
typedef int uint16_t ;
struct TYPE_7__ {void* fmpl_perrpc; void* fmpl_perypc; void* fmpl_perpc; void* fmpl_peypc; void* fmpl_pegpc; } ;
struct TYPE_8__ {TYPE_1__ profileRegs; } ;
struct TYPE_9__ {int extraReg; TYPE_2__ hcSpecificData; void* commandSequence; int actionReg; void* opcode; } ;
typedef TYPE_3__ t_HcFrame ;
typedef scalar_t__ t_Handle ;
typedef int t_FmHc ;
typedef scalar_t__ t_Error ;
typedef int t_DpaaFD ;
typedef int e_FmPcdPlcrProfileCounters ;


 int BUILD_FD (int ) ;
 int E_INVALID_HANDLE ;
 scalar_t__ E_INVALID_SELECTION ;
 scalar_t__ E_NO_MEMORY ;
 scalar_t__ E_OK ;
 scalar_t__ EnQFrm (int *,int *,void*) ;
 int FmPcdPlcrBuildReadPlcrActionReg (int ) ;
 int FmPcdPlcrProfileGetAbsoluteId (scalar_t__) ;
 TYPE_3__* GetBuf (int *,void**) ;
 int HC_HCOR_GBL ;
 int HC_HCOR_OPCODE_PLCR_PRFL ;
 int MAJOR ;
 int MINOR ;
 char* NO_MSG ;
 int PutBuf (int *,TYPE_3__*,void*) ;
 int REPORT_ERROR (int ,scalar_t__,char*) ;
 int SANITY_CHECK_RETURN_VALUE (scalar_t__,int ,int ) ;
 int SIZE_OF_HC_FRAME_READ_OR_CC_DYNAMIC ;





 int memset (TYPE_3__*,int ,int) ;

uint32_t FmHcPcdPlcrGetProfileCounter(t_Handle h_FmHc, t_Handle h_Profile, e_FmPcdPlcrProfileCounters counter)
{
    t_FmHc *p_FmHc = (t_FmHc*)h_FmHc;
    uint16_t absoluteProfileId = FmPcdPlcrProfileGetAbsoluteId(h_Profile);
    t_Error err;
    t_HcFrame *p_HcFrame;
    t_DpaaFD fmFd;
    uint32_t retVal = 0;
    uint32_t seqNum;

    SANITY_CHECK_RETURN_VALUE(h_FmHc, E_INVALID_HANDLE,0);


    p_HcFrame = GetBuf(p_FmHc, &seqNum);
    if (!p_HcFrame)
    {
        REPORT_ERROR(MINOR, E_NO_MEMORY, ("HC Frame object"));
        return 0;
    }
    memset(p_HcFrame, 0, sizeof(t_HcFrame));
    p_HcFrame->opcode = (uint32_t)(HC_HCOR_GBL | HC_HCOR_OPCODE_PLCR_PRFL);
    p_HcFrame->actionReg = FmPcdPlcrBuildReadPlcrActionReg(absoluteProfileId);
    p_HcFrame->extraReg = 0x00008000;
    p_HcFrame->commandSequence = seqNum;

    BUILD_FD(SIZE_OF_HC_FRAME_READ_OR_CC_DYNAMIC);

    err = EnQFrm(p_FmHc, &fmFd, seqNum);
    if (err != E_OK)
    {
        PutBuf(p_FmHc, p_HcFrame, seqNum);
        REPORT_ERROR(MINOR, err, NO_MSG);
        return 0;
    }

    switch (counter)
    {
        case 132:
            retVal = p_HcFrame->hcSpecificData.profileRegs.fmpl_pegpc;
            break;
        case 128:
            retVal = p_HcFrame->hcSpecificData.profileRegs.fmpl_peypc;
            break;
        case 129:
            retVal = p_HcFrame->hcSpecificData.profileRegs.fmpl_perpc;
            break;
        case 130:
            retVal = p_HcFrame->hcSpecificData.profileRegs.fmpl_perypc;
            break;
        case 131:
            retVal = p_HcFrame->hcSpecificData.profileRegs.fmpl_perrpc;
            break;
        default:
            REPORT_ERROR(MAJOR, E_INVALID_SELECTION, NO_MSG);
    }

    PutBuf(p_FmHc, p_HcFrame, seqNum);
    return retVal;
}
