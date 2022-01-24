#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
struct TYPE_4__ {scalar_t__ h_Profile; int /*<<< orphan*/  h_DirectScheme; int /*<<< orphan*/  action; } ;
typedef  TYPE_1__ u_FmPcdPlcrNextEngineParams ;
struct TYPE_5__ {int absoluteProfileId; } ;
typedef  TYPE_2__ t_FmPcdPlcrProfile ;
typedef  int /*<<< orphan*/  t_FmPcd ;
typedef  int /*<<< orphan*/  t_Error ;
typedef  int e_FmPcdEngine ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALID_SELECTION ; 
 int /*<<< orphan*/  E_INVALID_STATE ; 
 int /*<<< orphan*/  E_NOT_IN_RANGE ; 
 int /*<<< orphan*/  E_OK ; 
 int FM_PCD_KG_NUM_OF_SCHEMES ; 
 int FM_PCD_PLCR_NIA_VALID ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  MAJOR ; 
 int NIA_ENG_KG ; 
 int NIA_ENG_PLCR ; 
 int NIA_KG_DIRECT ; 
 int NIA_PLCR_ABSOLUTE ; 
 char* NO_MSG ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
#define  e_FM_PCD_DONE 132 
#define  e_FM_PCD_DROP_FRAME 131 
#define  e_FM_PCD_ENQ_FRAME 130 
#define  e_FM_PCD_KG 129 
#define  e_FM_PCD_PLCR 128 

__attribute__((used)) static t_Error FUNC9(t_FmPcd *p_FmPcd, e_FmPcdEngine nextEngine, u_FmPcdPlcrNextEngineParams *p_NextEngineParams, uint32_t *nextAction)
{
    uint32_t    nia;
    uint16_t    absoluteProfileId;
    uint8_t     relativeSchemeId, physicalSchemeId;

    nia = FM_PCD_PLCR_NIA_VALID;

    switch (nextEngine)
    {
        case e_FM_PCD_DONE :
            switch (p_NextEngineParams->action)
            {
                case e_FM_PCD_DROP_FRAME :
                    nia |= FUNC4(p_FmPcd);
                    break;
                case e_FM_PCD_ENQ_FRAME:
                    nia |= FUNC5(p_FmPcd);
                    break;
                default:
                    FUNC8(MAJOR, E_INVALID_SELECTION, NO_MSG);
            }
            break;
        case e_FM_PCD_KG:
            physicalSchemeId = FUNC1(p_NextEngineParams->h_DirectScheme);
            relativeSchemeId = FUNC0(p_FmPcd, physicalSchemeId);
            if (relativeSchemeId >= FM_PCD_KG_NUM_OF_SCHEMES)
                FUNC8(MAJOR, E_NOT_IN_RANGE, NO_MSG);
            if (!FUNC2(p_NextEngineParams->h_DirectScheme))
                FUNC8(MAJOR, E_INVALID_STATE, ("Invalid direct scheme."));
            if (!FUNC7(p_FmPcd, relativeSchemeId))
                FUNC8(MAJOR, E_INVALID_STATE, ("Policer Profile may point only to a scheme that is always direct."));
            nia |= NIA_ENG_KG | NIA_KG_DIRECT | physicalSchemeId;
            break;
        case e_FM_PCD_PLCR:
            absoluteProfileId = ((t_FmPcdPlcrProfile *)p_NextEngineParams->h_Profile)->absoluteProfileId;
            if (!FUNC6(p_FmPcd, absoluteProfileId))
                FUNC8(MAJOR, E_INVALID_STATE, ("Next profile must be a shared profile"));
            if (!FUNC3(p_FmPcd, absoluteProfileId))
                FUNC8(MAJOR, E_INVALID_STATE, ("Invalid profile "));
            nia |= NIA_ENG_PLCR | NIA_PLCR_ABSOLUTE | absoluteProfileId;
            break;
        default:
            FUNC8(MAJOR, E_INVALID_SELECTION, NO_MSG);
    }

    *nextAction =  nia;

    return E_OK;
}