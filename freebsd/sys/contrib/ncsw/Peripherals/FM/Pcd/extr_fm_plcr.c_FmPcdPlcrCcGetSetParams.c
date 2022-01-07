
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint32_t ;
typedef size_t uint16_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_19__ {int fmpl_pernia; int fmpl_peynia; int fmpl_pegnia; } ;
struct TYPE_20__ {TYPE_5__ profileRegs; } ;
typedef TYPE_6__ t_FmPcdPlcrRegs ;
struct TYPE_21__ {TYPE_4__* profiles; TYPE_6__* p_FmPcdPlcrRegs; } ;
typedef TYPE_7__ t_FmPcdPlcr ;
struct TYPE_22__ {TYPE_7__* p_FmPcdPlcr; scalar_t__ h_Hc; } ;
typedef TYPE_8__ t_FmPcd ;
typedef int t_Error ;
struct TYPE_17__ {scalar_t__ action; } ;
struct TYPE_16__ {scalar_t__ action; } ;
struct TYPE_15__ {scalar_t__ action; } ;
struct TYPE_18__ {int requiredAction; scalar_t__ nextEngineOnGreen; scalar_t__ nextEngineOnYellow; scalar_t__ nextEngineOnRed; TYPE_3__ paramsOnRed; TYPE_2__ paramsOnYellow; TYPE_1__ paramsOnGreen; int requiredActionFlag; } ;


 int E_INVALID_STATE ;
 int E_INVALID_VALUE ;
 int E_OK ;
 size_t FM_PCD_PLCR_NUM_ENTRIES ;
 int FM_PCD_PLCR_PAR_PWSEL_PEGNIA ;
 int FM_PCD_PLCR_PAR_PWSEL_PERNIA ;
 int FM_PCD_PLCR_PAR_PWSEL_PEYNIA ;
 int FmHcPcdPlcrCcGetSetParams (scalar_t__,size_t,int) ;
 int FmPcdPlcrBuildReadPlcrActionReg (size_t) ;
 int FmPcdPlcrBuildWritePlcrActionReg (size_t) ;
 int FmPcdPlcrIsProfileValid (TYPE_8__*,size_t) ;
 int FmPcdPlcrUpdateRequiredAction (TYPE_8__*,size_t,int) ;
 int GET_UINT32 (int ) ;
 int MAJOR ;
 int NIA_BMI_AC_ENQ_FRAME ;
 int NIA_BMI_AC_ENQ_FRAME_WITHOUT_DMA ;
 int NIA_ENG_BMI ;
 int PlcrHwLock (TYPE_7__*) ;
 int PlcrHwUnlock (TYPE_7__*,int) ;
 int RETURN_ERROR (int ,int ,char*) ;
 int TRUE ;
 int UPDATE_NIA_ENQ_WITHOUT_DMA ;
 int UpdateRequiredActionFlag (TYPE_8__*,size_t,int ) ;
 int WRITE_UINT32 (int ,int) ;
 int WritePar (TYPE_8__*,int) ;
 scalar_t__ e_FM_PCD_DONE ;
 scalar_t__ e_FM_PCD_ENQ_FRAME ;

t_Error FmPcdPlcrCcGetSetParams(t_Handle h_FmPcd, uint16_t profileIndx ,uint32_t requiredAction)
{
    t_FmPcd *p_FmPcd = (t_FmPcd *)h_FmPcd;
    t_FmPcdPlcr *p_FmPcdPlcr = p_FmPcd->p_FmPcdPlcr;
    t_FmPcdPlcrRegs *p_FmPcdPlcrRegs = p_FmPcdPlcr->p_FmPcdPlcrRegs;
    uint32_t tmpReg32, intFlags;
    t_Error err;



    if (profileIndx >= FM_PCD_PLCR_NUM_ENTRIES)
        RETURN_ERROR(MAJOR, E_INVALID_VALUE,("Policer profile out of range"));

    if (!FmPcdPlcrIsProfileValid(p_FmPcd, profileIndx))
        RETURN_ERROR(MAJOR, E_INVALID_VALUE,("Policer profile is not valid"));



    if (p_FmPcd->h_Hc)
    {
        err = FmHcPcdPlcrCcGetSetParams(p_FmPcd->h_Hc, profileIndx, requiredAction);

        UpdateRequiredActionFlag(p_FmPcd, profileIndx, TRUE);
        FmPcdPlcrUpdateRequiredAction(p_FmPcd, profileIndx, requiredAction);


        return err;
    }




    intFlags = PlcrHwLock(p_FmPcdPlcr);
    WritePar(p_FmPcd, FmPcdPlcrBuildReadPlcrActionReg(profileIndx));

    if (!p_FmPcd->p_FmPcdPlcr->profiles[profileIndx].requiredActionFlag ||
       !(p_FmPcd->p_FmPcdPlcr->profiles[profileIndx].requiredAction & requiredAction))
    {
        if (requiredAction & UPDATE_NIA_ENQ_WITHOUT_DMA)
        {
            if ((p_FmPcd->p_FmPcdPlcr->profiles[profileIndx].nextEngineOnGreen!= e_FM_PCD_DONE) ||
               (p_FmPcd->p_FmPcdPlcr->profiles[profileIndx].nextEngineOnYellow!= e_FM_PCD_DONE) ||
               (p_FmPcd->p_FmPcdPlcr->profiles[profileIndx].nextEngineOnRed!= e_FM_PCD_DONE))
            {
                PlcrHwUnlock(p_FmPcdPlcr, intFlags);

                RETURN_ERROR (MAJOR, E_OK, ("In this case the next engine can be e_FM_PCD_DONE"));
            }

            if (p_FmPcd->p_FmPcdPlcr->profiles[profileIndx].paramsOnGreen.action == e_FM_PCD_ENQ_FRAME)
            {
                tmpReg32 = GET_UINT32(p_FmPcdPlcrRegs->profileRegs.fmpl_pegnia);
                if (!(tmpReg32 & (NIA_ENG_BMI | NIA_BMI_AC_ENQ_FRAME)))
                {
                    PlcrHwUnlock(p_FmPcdPlcr, intFlags);

                    RETURN_ERROR(MAJOR, E_INVALID_STATE, ("Next engine of this policer profile has to be assigned to FM_PCD_DONE"));
                }
                tmpReg32 |= NIA_BMI_AC_ENQ_FRAME_WITHOUT_DMA;
                WRITE_UINT32(p_FmPcdPlcrRegs->profileRegs.fmpl_pegnia, tmpReg32);
                tmpReg32 = FmPcdPlcrBuildWritePlcrActionReg(profileIndx);
                tmpReg32 |= FM_PCD_PLCR_PAR_PWSEL_PEGNIA;
                WritePar(p_FmPcd, tmpReg32);
            }

            if (p_FmPcd->p_FmPcdPlcr->profiles[profileIndx].paramsOnYellow.action == e_FM_PCD_ENQ_FRAME)
            {
                tmpReg32 = GET_UINT32(p_FmPcdPlcrRegs->profileRegs.fmpl_peynia);
                if (!(tmpReg32 & (NIA_ENG_BMI | NIA_BMI_AC_ENQ_FRAME)))
                {
                    PlcrHwUnlock(p_FmPcdPlcr, intFlags);

                    RETURN_ERROR(MAJOR, E_INVALID_STATE, ("Next engine of this policer profile has to be assigned to FM_PCD_DONE"));
                }
                tmpReg32 |= NIA_BMI_AC_ENQ_FRAME_WITHOUT_DMA;
                WRITE_UINT32(p_FmPcdPlcrRegs->profileRegs.fmpl_peynia, tmpReg32);
                tmpReg32 = FmPcdPlcrBuildWritePlcrActionReg(profileIndx);
                tmpReg32 |= FM_PCD_PLCR_PAR_PWSEL_PEYNIA;
                WritePar(p_FmPcd, tmpReg32);
                PlcrHwUnlock(p_FmPcdPlcr, intFlags);
            }

            if (p_FmPcd->p_FmPcdPlcr->profiles[profileIndx].paramsOnRed.action == e_FM_PCD_ENQ_FRAME)
            {
                tmpReg32 = GET_UINT32(p_FmPcdPlcrRegs->profileRegs.fmpl_pernia);
                if (!(tmpReg32 & (NIA_ENG_BMI | NIA_BMI_AC_ENQ_FRAME)))
                {
                    PlcrHwUnlock(p_FmPcdPlcr, intFlags);

                    RETURN_ERROR(MAJOR, E_INVALID_STATE, ("Next engine of this policer profile has to be assigned to FM_PCD_DONE"));
                }
                tmpReg32 |= NIA_BMI_AC_ENQ_FRAME_WITHOUT_DMA;
                WRITE_UINT32(p_FmPcdPlcrRegs->profileRegs.fmpl_pernia, tmpReg32);
                tmpReg32 = FmPcdPlcrBuildWritePlcrActionReg(profileIndx);
                tmpReg32 |= FM_PCD_PLCR_PAR_PWSEL_PERNIA;
                WritePar(p_FmPcd, tmpReg32);

            }
        }
    }
    PlcrHwUnlock(p_FmPcdPlcr, intFlags);

    UpdateRequiredActionFlag(p_FmPcd, profileIndx, TRUE);
    FmPcdPlcrUpdateRequiredAction(p_FmPcd, profileIndx, requiredAction);



    return E_OK;
}
