
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_5__ {void* commandSequence; scalar_t__ extraReg; scalar_t__ actionReg; void* opcode; } ;
typedef TYPE_1__ t_HcFrame ;
typedef scalar_t__ t_Handle ;
typedef int t_FmHc ;
typedef scalar_t__ t_Error ;
typedef int t_DpaaFD ;


 int ASSERT_COND (int *) ;
 int BUILD_FD (int) ;
 scalar_t__ E_NO_MEMORY ;
 scalar_t__ E_OK ;
 scalar_t__ EnQFrm (int *,int *,void*) ;
 TYPE_1__* GetBuf (int *,void**) ;
 int HC_HCOR_GBL ;
 int HC_HCOR_OPCODE_SYNC ;
 int MINOR ;
 char* NO_MSG ;
 int PutBuf (int *,TYPE_1__*,void*) ;
 int RETURN_ERROR (int ,scalar_t__,char*) ;
 int memset (TYPE_1__*,int ,int) ;

t_Error FmHcPcdSync(t_Handle h_FmHc)
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

    p_HcFrame->opcode = (uint32_t)(HC_HCOR_GBL | HC_HCOR_OPCODE_SYNC);
    p_HcFrame->actionReg = 0;
    p_HcFrame->extraReg = 0;
    p_HcFrame->commandSequence = seqNum;

    BUILD_FD(sizeof(t_HcFrame));

    err = EnQFrm(p_FmHc, &fmFd, seqNum);

    PutBuf(p_FmHc, p_HcFrame, seqNum);

    if (err != E_OK)
        RETURN_ERROR(MINOR, err, NO_MSG);

    return E_OK;
}
