
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_14__ {int fmpl_pects; int fmpl_pepts_ets; scalar_t__ fmpl_perrpc; scalar_t__ fmpl_perypc; scalar_t__ fmpl_perpc; scalar_t__ fmpl_peypc; scalar_t__ fmpl_pegpc; scalar_t__ fmpl_pernia; scalar_t__ fmpl_peynia; scalar_t__ fmpl_pegnia; scalar_t__ fmpl_pemode; scalar_t__ fmpl_pepbs_ebs; scalar_t__ fmpl_pepepir_eir; scalar_t__ fmpl_pecbs; scalar_t__ fmpl_pecir; int fmpl_pelts; } ;
typedef TYPE_3__ t_FmPcdPlcrProfileRegs ;
struct TYPE_13__ {int rollBackFrameSelection; int frameLengthSelection; } ;
struct TYPE_17__ {TYPE_2__ byteModeParams; int rateMode; int peakOrExcessInfoRate; int committedInfoRate; } ;
struct TYPE_12__ {int override; int dfltColor; } ;
struct TYPE_15__ {int algSelection; TYPE_7__ nonPassthroughAlgParams; TYPE_1__ color; int colorMode; int paramsOnRed; int nextEngineOnRed; int paramsOnYellow; int nextEngineOnYellow; int paramsOnGreen; int nextEngineOnGreen; } ;
typedef TYPE_4__ t_FmPcdPlcrProfileParams ;
struct TYPE_16__ {int h_Fm; } ;
typedef TYPE_5__ t_FmPcd ;
typedef scalar_t__ t_Error ;


 int ASSERT_COND (TYPE_5__*) ;
 int CalcRates (scalar_t__,TYPE_7__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 scalar_t__ E_INVALID_SELECTION ;
 scalar_t__ E_NOT_AVAILABLE ;
 scalar_t__ E_OK ;
 scalar_t__ FM_PCD_PLCR_PEMODE_ALG_MASK ;
 scalar_t__ FM_PCD_PLCR_PEMODE_ALG_RFC2698 ;
 scalar_t__ FM_PCD_PLCR_PEMODE_ALG_RFC4115 ;
 scalar_t__ FM_PCD_PLCR_PEMODE_CBLND ;
 scalar_t__ FM_PCD_PLCR_PEMODE_DEFC_MASK ;
 scalar_t__ FM_PCD_PLCR_PEMODE_DEFC_OVERRIDE ;
 scalar_t__ FM_PCD_PLCR_PEMODE_DEFC_R ;
 scalar_t__ FM_PCD_PLCR_PEMODE_DEFC_Y ;
 scalar_t__ FM_PCD_PLCR_PEMODE_FLS_FULL ;
 scalar_t__ FM_PCD_PLCR_PEMODE_FLS_L2 ;
 scalar_t__ FM_PCD_PLCR_PEMODE_FLS_L3 ;
 scalar_t__ FM_PCD_PLCR_PEMODE_FLS_L4 ;
 scalar_t__ FM_PCD_PLCR_PEMODE_FPP_SHIFT ;
 scalar_t__ FM_PCD_PLCR_PEMODE_OVCLR_G_NC ;
 scalar_t__ FM_PCD_PLCR_PEMODE_OVCLR_MASK ;
 scalar_t__ FM_PCD_PLCR_PEMODE_OVCLR_R ;
 scalar_t__ FM_PCD_PLCR_PEMODE_OVCLR_Y ;
 scalar_t__ FM_PCD_PLCR_PEMODE_PI ;
 scalar_t__ FM_PCD_PLCR_PEMODE_PKT ;
 scalar_t__ FM_PCD_PLCR_PEMODE_RBFLS ;
 scalar_t__ FmGetTimeStampScale (int ) ;
 int MAJOR ;
 char* NO_MSG ;
 int RETURN_ERROR (int ,scalar_t__,char*) ;
 scalar_t__ SetProfileNia (TYPE_5__*,int ,int *,scalar_t__*) ;
__attribute__((used)) static t_Error BuildProfileRegs(t_FmPcd *p_FmPcd,
                                t_FmPcdPlcrProfileParams *p_ProfileParams,
                                t_FmPcdPlcrProfileRegs *p_PlcrRegs)
{
    t_Error err = E_OK;
    uint32_t pemode, gnia, ynia, rnia, bitFor1Micro;

    ASSERT_COND(p_FmPcd);

    bitFor1Micro = FmGetTimeStampScale(p_FmPcd->h_Fm);
    if (bitFor1Micro == 0)
    RETURN_ERROR(MAJOR, E_NOT_AVAILABLE, ("Timestamp scale"));


    err = SetProfileNia(p_FmPcd, p_ProfileParams->nextEngineOnGreen, &(p_ProfileParams->paramsOnGreen), &gnia);
    if (err)
        RETURN_ERROR(MAJOR, err, NO_MSG);
    err = SetProfileNia(p_FmPcd, p_ProfileParams->nextEngineOnYellow, &(p_ProfileParams->paramsOnYellow), &ynia);
    if (err)
        RETURN_ERROR(MAJOR, err, NO_MSG);
    err = SetProfileNia(p_FmPcd, p_ProfileParams->nextEngineOnRed, &(p_ProfileParams->paramsOnRed), &rnia);
   if (err)
        RETURN_ERROR(MAJOR, err, NO_MSG);


    pemode = FM_PCD_PLCR_PEMODE_PI;

    switch (p_ProfileParams->algSelection)
    {
        case 134:
            p_PlcrRegs->fmpl_pecir = 0;
            p_PlcrRegs->fmpl_pecbs = 0;
            p_PlcrRegs->fmpl_pepepir_eir = 0;
            p_PlcrRegs->fmpl_pepbs_ebs = 0;
            p_PlcrRegs->fmpl_pelts = 0;
            p_PlcrRegs->fmpl_pects = 0;
            p_PlcrRegs->fmpl_pepts_ets = 0;
            pemode &= ~FM_PCD_PLCR_PEMODE_ALG_MASK;
            switch (p_ProfileParams->colorMode)
            {
                case 142:
                    pemode |= FM_PCD_PLCR_PEMODE_CBLND;
                    switch (p_ProfileParams->color.dfltColor)
                    {
                        case 140:
                            pemode &= ~FM_PCD_PLCR_PEMODE_DEFC_MASK;
                            break;
                        case 128:
                            pemode |= FM_PCD_PLCR_PEMODE_DEFC_Y;
                            break;
                        case 133:
                            pemode |= FM_PCD_PLCR_PEMODE_DEFC_R;
                            break;
                        case 136:
                            pemode |= FM_PCD_PLCR_PEMODE_DEFC_OVERRIDE;
                            break;
                        default:
                            RETURN_ERROR(MAJOR, E_INVALID_SELECTION, NO_MSG);
                    }

                    break;
                case 143:
                    pemode &= ~FM_PCD_PLCR_PEMODE_CBLND;
                    break;
                default:
                    RETURN_ERROR(MAJOR, E_INVALID_SELECTION, NO_MSG);
            }
            break;

        case 132:

            pemode |= FM_PCD_PLCR_PEMODE_ALG_RFC2698;
            if (p_ProfileParams->nonPassthroughAlgParams.committedInfoRate > p_ProfileParams->nonPassthroughAlgParams.peakOrExcessInfoRate)
                RETURN_ERROR(MAJOR, E_INVALID_SELECTION, ("in RFC2698 Peak rate must be equal or larger than committedInfoRate."));
            goto cont_rfc;
        case 131:

            pemode |= FM_PCD_PLCR_PEMODE_ALG_RFC4115;
cont_rfc:

            switch (p_ProfileParams->colorMode)
            {
                case 142:
                    pemode |= FM_PCD_PLCR_PEMODE_CBLND;
                    break;
                case 143:
                    pemode &= ~FM_PCD_PLCR_PEMODE_CBLND;

                    switch (p_ProfileParams->color.override)
                    {
                        case 140:
                            pemode &= ~FM_PCD_PLCR_PEMODE_OVCLR_MASK;
                            break;
                        case 128:
                            pemode |= FM_PCD_PLCR_PEMODE_OVCLR_Y;
                            break;
                        case 133:
                            pemode |= FM_PCD_PLCR_PEMODE_OVCLR_R;
                            break;
                        case 136:
                            pemode |= FM_PCD_PLCR_PEMODE_OVCLR_G_NC;
                            break;
                        default:
                            RETURN_ERROR(MAJOR, E_INVALID_SELECTION, NO_MSG);
                    }
                    break;
                default:
                    RETURN_ERROR(MAJOR, E_INVALID_SELECTION, NO_MSG);
            }

            switch (p_ProfileParams->nonPassthroughAlgParams.rateMode)
            {
                case 144 :
                    pemode &= ~FM_PCD_PLCR_PEMODE_PKT;
                        switch (p_ProfileParams->nonPassthroughAlgParams.byteModeParams.frameLengthSelection)
                        {
                            case 139:
                                pemode |= FM_PCD_PLCR_PEMODE_FLS_L2;
                                break;
                            case 138:
                                pemode |= FM_PCD_PLCR_PEMODE_FLS_L3;
                                break;
                            case 137:
                                pemode |= FM_PCD_PLCR_PEMODE_FLS_L4;
                                break;
                            case 141:
                                pemode |= FM_PCD_PLCR_PEMODE_FLS_FULL;
                                break;
                            default:
                                RETURN_ERROR(MAJOR, E_INVALID_SELECTION, NO_MSG);
                        }
                        switch (p_ProfileParams->nonPassthroughAlgParams.byteModeParams.rollBackFrameSelection)
                        {
                            case 129:
                                pemode &= ~FM_PCD_PLCR_PEMODE_RBFLS;
                                break;
                            case 130:
                                pemode |= FM_PCD_PLCR_PEMODE_RBFLS;
                                break;
                            default:
                                RETURN_ERROR(MAJOR, E_INVALID_SELECTION, NO_MSG);
                        }
                    break;
                case 135 :
                    pemode |= FM_PCD_PLCR_PEMODE_PKT;
                    break;
                default:
                    RETURN_ERROR(MAJOR, E_INVALID_SELECTION, NO_MSG);
            }





            {
                uint32_t cir=0, cbs=0, pir_eir=0, pbs_ebs=0, fpp=0;

                CalcRates(bitFor1Micro, &p_ProfileParams->nonPassthroughAlgParams, &cir, &cbs, &pir_eir, &pbs_ebs, &fpp);


                p_PlcrRegs->fmpl_pecir = cir;

                p_PlcrRegs->fmpl_pecbs = cbs;

                p_PlcrRegs->fmpl_pepepir_eir = pir_eir;

                p_PlcrRegs->fmpl_pepbs_ebs = pbs_ebs;



                p_PlcrRegs->fmpl_pepts_ets = 0xFFFFFFFF;

                p_PlcrRegs->fmpl_pects = 0xFFFFFFFF;


                pemode |= (fpp << FM_PCD_PLCR_PEMODE_FPP_SHIFT);
            }
            break;
        default:
            RETURN_ERROR(MAJOR, E_INVALID_SELECTION, NO_MSG);
    }

    p_PlcrRegs->fmpl_pemode = pemode;

    p_PlcrRegs->fmpl_pegnia = gnia;
    p_PlcrRegs->fmpl_peynia = ynia;
    p_PlcrRegs->fmpl_pernia = rnia;


    p_PlcrRegs->fmpl_pegpc = 0;
    p_PlcrRegs->fmpl_peypc = 0;
    p_PlcrRegs->fmpl_perpc = 0;
    p_PlcrRegs->fmpl_perypc = 0;
    p_PlcrRegs->fmpl_perrpc = 0;

    return E_OK;
}
