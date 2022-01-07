
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_4__ {scalar_t__ h_Profile; int h_DirectScheme; int action; } ;
typedef TYPE_1__ u_FmPcdPlcrNextEngineParams ;
struct TYPE_5__ {int absoluteProfileId; } ;
typedef TYPE_2__ t_FmPcdPlcrProfile ;
typedef int t_FmPcd ;
typedef int t_Error ;
typedef int e_FmPcdEngine ;


 int E_INVALID_SELECTION ;
 int E_INVALID_STATE ;
 int E_NOT_IN_RANGE ;
 int E_OK ;
 int FM_PCD_KG_NUM_OF_SCHEMES ;
 int FM_PCD_PLCR_NIA_VALID ;
 int FmPcdKgGetRelativeSchemeId (int *,int) ;
 int FmPcdKgGetSchemeId (int ) ;
 int FmPcdKgIsSchemeValidSw (int ) ;
 int FmPcdPlcrIsProfileValid (int *,int) ;
 int GET_NIA_BMI_AC_DISCARD_FRAME (int *) ;
 int GET_NIA_BMI_AC_ENQ_FRAME (int *) ;
 int IsProfileShared (int *,int) ;
 int KgIsSchemeAlwaysDirect (int *,int) ;
 int MAJOR ;
 int NIA_ENG_KG ;
 int NIA_ENG_PLCR ;
 int NIA_KG_DIRECT ;
 int NIA_PLCR_ABSOLUTE ;
 char* NO_MSG ;
 int RETURN_ERROR (int ,int ,char*) ;






__attribute__((used)) static t_Error SetProfileNia(t_FmPcd *p_FmPcd, e_FmPcdEngine nextEngine, u_FmPcdPlcrNextEngineParams *p_NextEngineParams, uint32_t *nextAction)
{
    uint32_t nia;
    uint16_t absoluteProfileId;
    uint8_t relativeSchemeId, physicalSchemeId;

    nia = FM_PCD_PLCR_NIA_VALID;

    switch (nextEngine)
    {
        case 132 :
            switch (p_NextEngineParams->action)
            {
                case 131 :
                    nia |= GET_NIA_BMI_AC_DISCARD_FRAME(p_FmPcd);
                    break;
                case 130:
                    nia |= GET_NIA_BMI_AC_ENQ_FRAME(p_FmPcd);
                    break;
                default:
                    RETURN_ERROR(MAJOR, E_INVALID_SELECTION, NO_MSG);
            }
            break;
        case 129:
            physicalSchemeId = FmPcdKgGetSchemeId(p_NextEngineParams->h_DirectScheme);
            relativeSchemeId = FmPcdKgGetRelativeSchemeId(p_FmPcd, physicalSchemeId);
            if (relativeSchemeId >= FM_PCD_KG_NUM_OF_SCHEMES)
                RETURN_ERROR(MAJOR, E_NOT_IN_RANGE, NO_MSG);
            if (!FmPcdKgIsSchemeValidSw(p_NextEngineParams->h_DirectScheme))
                RETURN_ERROR(MAJOR, E_INVALID_STATE, ("Invalid direct scheme."));
            if (!KgIsSchemeAlwaysDirect(p_FmPcd, relativeSchemeId))
                RETURN_ERROR(MAJOR, E_INVALID_STATE, ("Policer Profile may point only to a scheme that is always direct."));
            nia |= NIA_ENG_KG | NIA_KG_DIRECT | physicalSchemeId;
            break;
        case 128:
            absoluteProfileId = ((t_FmPcdPlcrProfile *)p_NextEngineParams->h_Profile)->absoluteProfileId;
            if (!IsProfileShared(p_FmPcd, absoluteProfileId))
                RETURN_ERROR(MAJOR, E_INVALID_STATE, ("Next profile must be a shared profile"));
            if (!FmPcdPlcrIsProfileValid(p_FmPcd, absoluteProfileId))
                RETURN_ERROR(MAJOR, E_INVALID_STATE, ("Invalid profile "));
            nia |= NIA_ENG_PLCR | NIA_PLCR_ABSOLUTE | absoluteProfileId;
            break;
        default:
            RETURN_ERROR(MAJOR, E_INVALID_SELECTION, NO_MSG);
    }

    *nextAction = nia;

    return E_OK;
}
