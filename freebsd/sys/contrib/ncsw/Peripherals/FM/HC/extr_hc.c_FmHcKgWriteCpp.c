
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef void* uint32_t ;
struct TYPE_6__ {void* singleRegForWrite; } ;
struct TYPE_7__ {void* commandSequence; TYPE_1__ hcSpecificData; int extraReg; int actionReg; void* opcode; } ;
typedef TYPE_2__ t_HcFrame ;
typedef scalar_t__ t_Handle ;
typedef int t_FmHc ;
typedef scalar_t__ t_Error ;
typedef int t_DpaaFD ;


 int ASSERT_COND (int *) ;
 int BUILD_FD (int) ;
 scalar_t__ E_NO_MEMORY ;
 scalar_t__ E_OK ;
 scalar_t__ EnQFrm (int *,int *,void*) ;
 int FmPcdKgBuildWritePortClsPlanBindActionReg (int ) ;
 TYPE_2__* GetBuf (int *,void**) ;
 int HC_HCOR_GBL ;
 int HC_HCOR_KG_SCHEME_REGS_MASK ;
 int HC_HCOR_OPCODE_KG_SCM ;
 int MINOR ;
 char* NO_MSG ;
 int PutBuf (int *,TYPE_2__*,void*) ;
 int RETURN_ERROR (int ,scalar_t__,char*) ;
 int memset (TYPE_2__*,int ,int) ;

t_Error FmHcKgWriteCpp(t_Handle h_FmHc, uint8_t hardwarePortId, uint32_t cppReg)
{
    t_FmHc *p_FmHc = (t_FmHc*)h_FmHc;
    t_HcFrame *p_HcFrame;
    t_DpaaFD fmFd;
    t_Error err = E_OK;
    uint32_t seqNum;

    ASSERT_COND(p_FmHc);

    p_HcFrame = GetBuf(p_FmHc, &seqNum);
    if (!p_HcFrame)
        RETURN_ERROR(MINOR, E_NO_MEMORY, ("HC Frame object"));
    memset(p_HcFrame, 0, sizeof(t_HcFrame));

    p_HcFrame->opcode = (uint32_t)(HC_HCOR_GBL | HC_HCOR_OPCODE_KG_SCM);
    p_HcFrame->actionReg = FmPcdKgBuildWritePortClsPlanBindActionReg(hardwarePortId);
    p_HcFrame->extraReg = HC_HCOR_KG_SCHEME_REGS_MASK;
    p_HcFrame->hcSpecificData.singleRegForWrite = cppReg;
    p_HcFrame->commandSequence = seqNum;

    BUILD_FD(sizeof(t_HcFrame));

    err = EnQFrm(p_FmHc, &fmFd, seqNum);

    PutBuf(p_FmHc, p_HcFrame, seqNum);

    if (err != E_OK)
        RETURN_ERROR(MINOR, err, NO_MSG);

    return E_OK;
}
