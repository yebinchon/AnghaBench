
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_5__ {int actionReg; void* commandSequence; void* extraReg; void* opcode; } ;
typedef TYPE_1__ t_HcFrame ;
typedef scalar_t__ t_Handle ;
typedef int t_FmHc ;
typedef scalar_t__ t_Error ;
typedef int t_DpaaFD ;


 int BUILD_FD (int ) ;
 int E_INVALID_HANDLE ;
 scalar_t__ E_NO_MEMORY ;
 scalar_t__ E_OK ;
 scalar_t__ EnQFrm (int *,int *,void*) ;
 TYPE_1__* GetBuf (int *,void**) ;
 int HC_HCOR_GBL ;
 int HC_HCOR_OPCODE_CC ;
 int MAJOR ;
 int MINOR ;
 char* NO_MSG ;
 int PutBuf (int *,TYPE_1__*,void*) ;
 int RETURN_ERROR (int ,scalar_t__,char*) ;
 int SANITY_CHECK_RETURN_ERROR (int *,int ) ;
 int SIZE_OF_HC_FRAME_READ_OR_CC_DYNAMIC ;
 int memset (TYPE_1__*,int ,int) ;

t_Error FmHcPcdCcDoDynamicChange(t_Handle h_FmHc, uint32_t oldAdAddrOffset, uint32_t newAdAddrOffset)
{
    t_FmHc *p_FmHc = (t_FmHc*)h_FmHc;
    t_HcFrame *p_HcFrame;
    t_DpaaFD fmFd;
    t_Error err = E_OK;
    uint32_t seqNum;

    SANITY_CHECK_RETURN_ERROR(p_FmHc, E_INVALID_HANDLE);

    p_HcFrame = GetBuf(p_FmHc, &seqNum);
    if (!p_HcFrame)
        RETURN_ERROR(MINOR, E_NO_MEMORY, ("HC Frame object"));
    memset(p_HcFrame, 0, sizeof(t_HcFrame));

    p_HcFrame->opcode = (uint32_t)(HC_HCOR_GBL | HC_HCOR_OPCODE_CC);
    p_HcFrame->actionReg = newAdAddrOffset;
    p_HcFrame->actionReg |= 0xc0000000;
    p_HcFrame->extraReg = oldAdAddrOffset;
    p_HcFrame->commandSequence = seqNum;

    BUILD_FD(SIZE_OF_HC_FRAME_READ_OR_CC_DYNAMIC);

    err = EnQFrm(p_FmHc, &fmFd, seqNum);

    PutBuf(p_FmHc, p_HcFrame, seqNum);

    if (err != E_OK)
        RETURN_ERROR(MAJOR, err, NO_MSG);

    return E_OK;
}
