
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* uint32_t ;
typedef int uint16_t ;
struct TYPE_6__ {int profileRegs; } ;
struct TYPE_7__ {int extraReg; void* commandSequence; TYPE_1__ hcSpecificData; int actionReg; void* opcode; } ;
typedef TYPE_2__ t_HcFrame ;
typedef scalar_t__ t_Handle ;
typedef int t_FmPcdPlcrProfileRegs ;
typedef int t_FmHc ;
typedef scalar_t__ t_Error ;
typedef int t_DpaaFD ;


 int BUILD_FD (int) ;
 scalar_t__ E_NO_MEMORY ;
 scalar_t__ E_OK ;
 scalar_t__ EnQFrm (int *,int *,void*) ;
 int FmPcdPlcrBuildWritePlcrActionRegs (int ) ;
 int FmPcdPlcrProfileGetAbsoluteId (scalar_t__) ;
 TYPE_2__* GetBuf (int *,void**) ;
 int HC_HCOR_GBL ;
 int HC_HCOR_OPCODE_PLCR_PRFL ;
 int MINOR ;
 char* NO_MSG ;
 int PutBuf (int *,TYPE_2__*,void*) ;
 int RETURN_ERROR (int ,scalar_t__,char*) ;
 int memcpy (int *,int *,int) ;
 int memset (TYPE_2__*,int ,int) ;

t_Error FmHcPcdPlcrSetProfile(t_Handle h_FmHc, t_Handle h_Profile, t_FmPcdPlcrProfileRegs *p_PlcrRegs)
{
    t_FmHc *p_FmHc = (t_FmHc*)h_FmHc;
    t_Error err = E_OK;
    uint16_t profileIndx;
    t_HcFrame *p_HcFrame;
    t_DpaaFD fmFd;
    uint32_t seqNum;

    p_HcFrame = GetBuf(p_FmHc, &seqNum);
    if (!p_HcFrame)
        RETURN_ERROR(MINOR, E_NO_MEMORY, ("HC Frame object"));

    profileIndx = FmPcdPlcrProfileGetAbsoluteId(h_Profile);

    memset(p_HcFrame, 0, sizeof(t_HcFrame));
    p_HcFrame->opcode = (uint32_t)(HC_HCOR_GBL | HC_HCOR_OPCODE_PLCR_PRFL);
    p_HcFrame->actionReg = FmPcdPlcrBuildWritePlcrActionRegs(profileIndx);
    p_HcFrame->extraReg = 0x00008000;
    memcpy(&p_HcFrame->hcSpecificData.profileRegs, p_PlcrRegs, sizeof(t_FmPcdPlcrProfileRegs));
    p_HcFrame->commandSequence = seqNum;

    BUILD_FD(sizeof(t_HcFrame));

    err = EnQFrm(p_FmHc, &fmFd, seqNum);

    PutBuf(p_FmHc, p_HcFrame, seqNum);

    if (err != E_OK)
        RETURN_ERROR(MINOR, err, NO_MSG);

    return E_OK;
}
