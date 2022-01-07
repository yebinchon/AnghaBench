
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct TYPE_11__ {int kgse_mode; int kgse_om; } ;
struct TYPE_12__ {TYPE_1__ schemeRegs; } ;
struct TYPE_13__ {int opcode; int commandSequence; void* extraReg; int actionReg; TYPE_2__ hcSpecificData; } ;
typedef TYPE_3__ t_HcFrame ;
typedef scalar_t__ t_Handle ;
struct TYPE_14__ {int h_FmPcd; } ;
typedef TYPE_4__ t_FmHc ;
typedef scalar_t__ t_Error ;
typedef int t_DpaaFD ;


 int ASSERT_COND (int) ;
 int BUILD_FD (int) ;
 scalar_t__ E_NOT_IN_RANGE ;
 scalar_t__ E_NOT_SUPPORTED ;
 scalar_t__ E_NO_MEMORY ;
 scalar_t__ E_OK ;
 scalar_t__ EnQFrm (TYPE_4__*,int *,int) ;
 scalar_t__ FALSE ;
 scalar_t__ FM_PCD_KG_NUM_OF_SCHEMES ;
 int FmPcdKgBuildReadSchemeActionReg (scalar_t__) ;
 int FmPcdKgBuildWriteSchemeActionReg (scalar_t__,scalar_t__) ;
 scalar_t__ FmPcdKgGetDoneAction (int ,scalar_t__) ;
 scalar_t__ FmPcdKgGetNextEngine (int ,scalar_t__) ;
 int FmPcdKgGetRelativeProfileId (int ,scalar_t__) ;
 scalar_t__ FmPcdKgGetRelativeSchemeId (int ,scalar_t__) ;
 int FmPcdKgGetRequiredAction (int ,scalar_t__) ;
 int FmPcdKgGetRequiredActionFlag (int ,scalar_t__) ;
 scalar_t__ FmPcdKgGetSchemeId (scalar_t__) ;
 scalar_t__ FmPcdKgIsDirectPlcr (int ,scalar_t__) ;
 scalar_t__ FmPcdKgIsDistrOnPlcrProfile (int ,scalar_t__) ;
 scalar_t__ FmPcdPlcrCcGetSetParams (int ,int ,int) ;
 TYPE_3__* GetBuf (TYPE_4__*,int*) ;
 int HC_HCOR_GBL ;
 void* HC_HCOR_KG_SCHEME_REGS_MASK ;
 int HC_HCOR_OPCODE_KG_SCM ;
 int MAJOR ;
 int MINOR ;
 int NIA_AC_MASK ;
 int NIA_BMI_AC_ENQ_FRAME ;
 int NIA_BMI_AC_ENQ_FRAME_WITHOUT_DMA ;
 int NIA_ENG_BMI ;
 int NIA_ENG_FM_CTL ;
 int NIA_ENG_MASK ;
 int NIA_FM_CTL_AC_CC ;
 int NIA_FM_CTL_AC_PRE_CC ;
 char* NO_MSG ;
 int PutBuf (TYPE_4__*,TYPE_3__*,int) ;
 int RETURN_ERROR (int ,scalar_t__,char*) ;
 int SIZE_OF_HC_FRAME_READ_OR_CC_DYNAMIC ;
 scalar_t__ TRUE ;
 int UPDATE_KG_NIA ;
 int UPDATE_KG_NIA_CC_WA ;
 int UPDATE_KG_OPT_MODE ;
 int UPDATE_NIA_ENQ_WITHOUT_DMA ;
 scalar_t__ e_FM_PCD_CC ;
 scalar_t__ e_FM_PCD_DONE ;
 scalar_t__ e_FM_PCD_ENQ_FRAME ;
 scalar_t__ e_FM_PCD_PLCR ;
 int memset (TYPE_3__*,int ,int) ;

t_Error FmHcPcdKgCcGetSetParams(t_Handle h_FmHc, t_Handle h_Scheme, uint32_t requiredAction, uint32_t value)
{
    t_FmHc *p_FmHc = (t_FmHc*)h_FmHc;
    t_Error err = E_OK;
    t_HcFrame *p_HcFrame;
    t_DpaaFD fmFd;
    uint8_t relativeSchemeId;
    uint8_t physicalSchemeId = FmPcdKgGetSchemeId(h_Scheme);
    uint32_t tmpReg32 = 0;
    uint32_t seqNum;






    relativeSchemeId = FmPcdKgGetRelativeSchemeId(p_FmHc->h_FmPcd, physicalSchemeId);
    if ( relativeSchemeId == FM_PCD_KG_NUM_OF_SCHEMES)
        RETURN_ERROR(MAJOR, E_NOT_IN_RANGE, NO_MSG);

    if (!FmPcdKgGetRequiredActionFlag(p_FmHc->h_FmPcd, relativeSchemeId) ||
       !(FmPcdKgGetRequiredAction(p_FmHc->h_FmPcd, relativeSchemeId) & requiredAction))
    {
        if ((requiredAction & UPDATE_NIA_ENQ_WITHOUT_DMA) &&
            (FmPcdKgGetNextEngine(p_FmHc->h_FmPcd, relativeSchemeId) == e_FM_PCD_PLCR))
            {
                if ((FmPcdKgIsDirectPlcr(p_FmHc->h_FmPcd, relativeSchemeId) == FALSE) ||
                    (FmPcdKgIsDistrOnPlcrProfile(p_FmHc->h_FmPcd, relativeSchemeId) == TRUE))
                    RETURN_ERROR(MAJOR, E_NOT_SUPPORTED, ("In this situation PP can not be with distribution and has to be shared"));
                err = FmPcdPlcrCcGetSetParams(p_FmHc->h_FmPcd, FmPcdKgGetRelativeProfileId(p_FmHc->h_FmPcd, relativeSchemeId), requiredAction);
                if (err)
                    RETURN_ERROR(MAJOR, err, NO_MSG);
            }
        else
        {

            p_HcFrame = GetBuf(p_FmHc, &seqNum);
            if (!p_HcFrame)
                RETURN_ERROR(MINOR, E_NO_MEMORY, ("HC Frame object"));
            memset(p_HcFrame, 0, sizeof(t_HcFrame));
            p_HcFrame->opcode = (uint32_t)(HC_HCOR_GBL | HC_HCOR_OPCODE_KG_SCM);
            p_HcFrame->actionReg = FmPcdKgBuildReadSchemeActionReg(physicalSchemeId);
            p_HcFrame->extraReg = HC_HCOR_KG_SCHEME_REGS_MASK;
            p_HcFrame->commandSequence = seqNum;
            BUILD_FD(SIZE_OF_HC_FRAME_READ_OR_CC_DYNAMIC);
            if ((err = EnQFrm(p_FmHc, &fmFd, seqNum)) != E_OK)
            {
                PutBuf(p_FmHc, p_HcFrame, seqNum);
                RETURN_ERROR(MINOR, err, NO_MSG);
            }


            if ((requiredAction & UPDATE_NIA_ENQ_WITHOUT_DMA) &&
                ((FmPcdKgGetNextEngine(p_FmHc->h_FmPcd, relativeSchemeId) == e_FM_PCD_DONE) &&
                 (FmPcdKgGetDoneAction(p_FmHc->h_FmPcd, relativeSchemeId) == e_FM_PCD_ENQ_FRAME)))
            {
                tmpReg32 = p_HcFrame->hcSpecificData.schemeRegs.kgse_mode;
                ASSERT_COND(tmpReg32 & (NIA_ENG_BMI | NIA_BMI_AC_ENQ_FRAME));
                p_HcFrame->hcSpecificData.schemeRegs.kgse_mode = tmpReg32 | NIA_BMI_AC_ENQ_FRAME_WITHOUT_DMA;
            }

            if ((requiredAction & UPDATE_KG_NIA_CC_WA) &&
                (FmPcdKgGetNextEngine(p_FmHc->h_FmPcd, relativeSchemeId) == e_FM_PCD_CC))
            {
                tmpReg32 = p_HcFrame->hcSpecificData.schemeRegs.kgse_mode;
                ASSERT_COND(tmpReg32 & (NIA_ENG_FM_CTL | NIA_FM_CTL_AC_CC));
                tmpReg32 &= ~NIA_FM_CTL_AC_CC;
                p_HcFrame->hcSpecificData.schemeRegs.kgse_mode = tmpReg32 | NIA_FM_CTL_AC_PRE_CC;
            }

            if (requiredAction & UPDATE_KG_OPT_MODE)
                p_HcFrame->hcSpecificData.schemeRegs.kgse_om = value;

            if (requiredAction & UPDATE_KG_NIA)
            {
                tmpReg32 = p_HcFrame->hcSpecificData.schemeRegs.kgse_mode;
                tmpReg32 &= ~(NIA_ENG_MASK | NIA_AC_MASK);
                tmpReg32 |= value;
                p_HcFrame->hcSpecificData.schemeRegs.kgse_mode = tmpReg32;
            }


            p_HcFrame->opcode = (uint32_t)(HC_HCOR_GBL | HC_HCOR_OPCODE_KG_SCM);
            p_HcFrame->actionReg = FmPcdKgBuildWriteSchemeActionReg(physicalSchemeId, FALSE);
            p_HcFrame->extraReg = HC_HCOR_KG_SCHEME_REGS_MASK;

            BUILD_FD(sizeof(t_HcFrame));
            err = EnQFrm(p_FmHc, &fmFd, seqNum);

            PutBuf(p_FmHc, p_HcFrame, seqNum);

            if (err != E_OK)
                RETURN_ERROR(MINOR, err, NO_MSG);
        }
    }

    return E_OK;
}
