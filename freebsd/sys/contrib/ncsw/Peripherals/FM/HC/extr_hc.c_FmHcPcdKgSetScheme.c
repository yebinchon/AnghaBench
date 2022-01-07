
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef void* uint32_t ;
struct TYPE_9__ {int kgse_mv; int kgse_ccbs; int kgse_dv1; int kgse_dv0; } ;
struct TYPE_7__ {TYPE_4__ schemeRegs; } ;
struct TYPE_8__ {void* commandSequence; TYPE_1__ hcSpecificData; int extraReg; int actionReg; void* opcode; } ;
typedef TYPE_2__ t_HcFrame ;
typedef scalar_t__ t_Handle ;
typedef int t_FmHc ;
typedef scalar_t__ t_Error ;
typedef int t_DpaaFD ;
struct fman_kg_scheme_regs {int kgse_mv; int kgse_ccbs; int kgse_dv1; int kgse_dv0; } ;


 int BUILD_FD (int) ;
 scalar_t__ E_NO_MEMORY ;
 scalar_t__ E_OK ;
 scalar_t__ EnQFrm (int *,int *,void*) ;
 int FmPcdKgBuildWriteSchemeActionReg (int ,int) ;
 int FmPcdKgGetSchemeId (scalar_t__) ;
 TYPE_2__* GetBuf (int *,void**) ;
 int HC_HCOR_GBL ;
 int HC_HCOR_KG_SCHEME_REGS_MASK ;
 int HC_HCOR_OPCODE_KG_SCM ;
 int MINOR ;
 char* NO_MSG ;
 int PutBuf (int *,TYPE_2__*,void*) ;
 int RETURN_ERROR (int ,scalar_t__,char*) ;
 int memcpy (TYPE_4__*,struct fman_kg_scheme_regs*,int) ;
 int memset (TYPE_2__*,int ,int) ;

t_Error FmHcPcdKgSetScheme(t_Handle h_FmHc,
                           t_Handle h_Scheme,
                           struct fman_kg_scheme_regs *p_SchemeRegs,
                           bool updateCounter)
{
    t_FmHc *p_FmHc = (t_FmHc*)h_FmHc;
    t_Error err = E_OK;
    t_HcFrame *p_HcFrame;
    t_DpaaFD fmFd;
    uint8_t physicalSchemeId;
    uint32_t seqNum;

    p_HcFrame = GetBuf(p_FmHc, &seqNum);
    if (!p_HcFrame)
        RETURN_ERROR(MINOR, E_NO_MEMORY, ("HC Frame object"));

    physicalSchemeId = FmPcdKgGetSchemeId(h_Scheme);

    memset(p_HcFrame, 0, sizeof(t_HcFrame));
    p_HcFrame->opcode = (uint32_t)(HC_HCOR_GBL | HC_HCOR_OPCODE_KG_SCM);
    p_HcFrame->actionReg = FmPcdKgBuildWriteSchemeActionReg(physicalSchemeId, updateCounter);
    p_HcFrame->extraReg = HC_HCOR_KG_SCHEME_REGS_MASK;
    memcpy(&p_HcFrame->hcSpecificData.schemeRegs, p_SchemeRegs, sizeof(struct fman_kg_scheme_regs));
    if (!updateCounter)
    {
        p_HcFrame->hcSpecificData.schemeRegs.kgse_dv0 = p_SchemeRegs->kgse_dv0;
        p_HcFrame->hcSpecificData.schemeRegs.kgse_dv1 = p_SchemeRegs->kgse_dv1;
        p_HcFrame->hcSpecificData.schemeRegs.kgse_ccbs = p_SchemeRegs->kgse_ccbs;
        p_HcFrame->hcSpecificData.schemeRegs.kgse_mv = p_SchemeRegs->kgse_mv;
    }
    p_HcFrame->commandSequence = seqNum;

    BUILD_FD(sizeof(t_HcFrame));

    err = EnQFrm(p_FmHc, &fmFd, seqNum);

    PutBuf(p_FmHc, p_HcFrame, seqNum);

    if (err != E_OK)
        RETURN_ERROR(MINOR, err, NO_MSG);

    return E_OK;
}
