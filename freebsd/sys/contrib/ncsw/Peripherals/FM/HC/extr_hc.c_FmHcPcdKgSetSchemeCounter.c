
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef void* uint32_t ;
struct TYPE_10__ {void* singleRegForWrite; } ;
struct TYPE_11__ {void* commandSequence; TYPE_1__ hcSpecificData; int extraReg; int actionReg; void* opcode; } ;
typedef TYPE_2__ t_HcFrame ;
typedef scalar_t__ t_Handle ;
struct TYPE_12__ {int h_FmPcd; } ;
typedef TYPE_3__ t_FmHc ;
typedef int t_Error ;
typedef int t_DpaaFD ;


 int BUILD_FD (int) ;
 int E_NOT_IN_RANGE ;
 int E_NO_MEMORY ;
 int E_OK ;
 int EnQFrm (TYPE_3__*,int *,void*) ;
 scalar_t__ FM_PCD_KG_NUM_OF_SCHEMES ;
 int FmPcdKgBuildWriteSchemeActionReg (scalar_t__,int ) ;
 scalar_t__ FmPcdKgGetRelativeSchemeId (int ,scalar_t__) ;
 scalar_t__ FmPcdKgGetSchemeId (scalar_t__) ;
 TYPE_2__* GetBuf (TYPE_3__*,void**) ;
 int HC_HCOR_GBL ;
 int HC_HCOR_KG_SCHEME_COUNTER ;
 int HC_HCOR_OPCODE_KG_SCM ;
 int MAJOR ;
 int MINOR ;
 char* NO_MSG ;
 int PutBuf (TYPE_3__*,TYPE_2__*,void*) ;
 int RETURN_ERROR (int ,int ,char*) ;
 int TRUE ;
 int memset (TYPE_2__*,int ,int) ;

t_Error FmHcPcdKgSetSchemeCounter(t_Handle h_FmHc, t_Handle h_Scheme, uint32_t value)
{
    t_FmHc *p_FmHc = (t_FmHc*)h_FmHc;
    t_Error err = E_OK;
    t_HcFrame *p_HcFrame;
    t_DpaaFD fmFd;
    uint8_t relativeSchemeId, physicalSchemeId;
    uint32_t seqNum;

    physicalSchemeId = FmPcdKgGetSchemeId(h_Scheme);
    relativeSchemeId = FmPcdKgGetRelativeSchemeId(p_FmHc->h_FmPcd, physicalSchemeId);
    if ( relativeSchemeId == FM_PCD_KG_NUM_OF_SCHEMES)
        RETURN_ERROR(MAJOR, E_NOT_IN_RANGE, NO_MSG);


    p_HcFrame = GetBuf(p_FmHc, &seqNum);
    if (!p_HcFrame)
        RETURN_ERROR(MINOR, E_NO_MEMORY, ("HC Frame object"));
    memset(p_HcFrame, 0, sizeof(t_HcFrame));
    p_HcFrame->opcode = (uint32_t)(HC_HCOR_GBL | HC_HCOR_OPCODE_KG_SCM);
    p_HcFrame->actionReg = FmPcdKgBuildWriteSchemeActionReg(physicalSchemeId, TRUE);
    p_HcFrame->extraReg = HC_HCOR_KG_SCHEME_COUNTER;

    p_HcFrame->hcSpecificData.singleRegForWrite = value;
    p_HcFrame->commandSequence = seqNum;

    BUILD_FD(sizeof(t_HcFrame));

    err = EnQFrm(p_FmHc, &fmFd, seqNum);

    PutBuf(p_FmHc, p_HcFrame, seqNum);
    return err;
}
