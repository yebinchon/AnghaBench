#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ uint16_t ;
typedef  scalar_t__ t_Handle ;
struct TYPE_10__ {int /*<<< orphan*/  fmpl_perrpc; int /*<<< orphan*/  fmpl_perypc; int /*<<< orphan*/  fmpl_perpc; int /*<<< orphan*/  fmpl_peypc; int /*<<< orphan*/  fmpl_pegpc; } ;
struct TYPE_11__ {TYPE_1__ profileRegs; } ;
typedef  TYPE_2__ t_FmPcdPlcrRegs ;
struct TYPE_12__ {scalar_t__ absoluteProfileId; TYPE_8__* p_FmPcdPlcr; scalar_t__ h_Hc; struct TYPE_12__* h_FmPcd; } ;
typedef  TYPE_3__ t_FmPcdPlcrProfile ;
typedef  TYPE_3__ t_FmPcd ;
typedef  int /*<<< orphan*/  e_FmPcdPlcrProfileCounters ;
struct TYPE_13__ {TYPE_2__* p_FmPcdPlcrRegs; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_INVALID_SELECTION ; 
 int /*<<< orphan*/  E_INVALID_VALUE ; 
 scalar_t__ FM_PCD_PLCR_NUM_ENTRIES ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAJOR ; 
 char* NO_MSG ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ) ; 
#define  e_FM_PCD_PLCR_PROFILE_GREEN_PACKET_TOTAL_COUNTER 132 
#define  e_FM_PCD_PLCR_PROFILE_RECOLOURED_RED_PACKET_TOTAL_COUNTER 131 
#define  e_FM_PCD_PLCR_PROFILE_RECOLOURED_YELLOW_PACKET_TOTAL_COUNTER 130 
#define  e_FM_PCD_PLCR_PROFILE_RED_PACKET_TOTAL_COUNTER 129 
#define  e_FM_PCD_PLCR_PROFILE_YELLOW_PACKET_TOTAL_COUNTER 128 

uint32_t FUNC9(t_Handle h_Profile, e_FmPcdPlcrProfileCounters counter)
{
    t_FmPcdPlcrProfile  *p_Profile = (t_FmPcdPlcrProfile*)h_Profile;
    t_FmPcd             *p_FmPcd;
    uint16_t            profileIndx;
    uint32_t            intFlags, counterVal = 0;
    t_FmPcdPlcrRegs     *p_FmPcdPlcrRegs;

    FUNC6(p_Profile, E_INVALID_HANDLE);
    p_FmPcd = p_Profile->h_FmPcd;
    FUNC6(p_FmPcd, E_INVALID_HANDLE);

    if (p_FmPcd->h_Hc)
        return FUNC0(p_FmPcd->h_Hc, h_Profile, counter);

    p_FmPcdPlcrRegs = p_FmPcd->p_FmPcdPlcr->p_FmPcdPlcrRegs;
    FUNC7(p_FmPcdPlcrRegs, E_INVALID_HANDLE, 0);

    profileIndx = p_Profile->absoluteProfileId;

    if (profileIndx >= FM_PCD_PLCR_NUM_ENTRIES)
    {
        FUNC5(MAJOR, E_INVALID_VALUE, ("profileId too Big "));
        return 0;
    }
    intFlags = FUNC3(p_FmPcd->p_FmPcdPlcr);
    FUNC8(p_FmPcd, FUNC1(profileIndx));

    switch (counter)
    {
        case e_FM_PCD_PLCR_PROFILE_GREEN_PACKET_TOTAL_COUNTER:
            counterVal = (FUNC2(p_FmPcdPlcrRegs->profileRegs.fmpl_pegpc));
            break;
        case e_FM_PCD_PLCR_PROFILE_YELLOW_PACKET_TOTAL_COUNTER:
            counterVal = FUNC2(p_FmPcdPlcrRegs->profileRegs.fmpl_peypc);
            break;
        case e_FM_PCD_PLCR_PROFILE_RED_PACKET_TOTAL_COUNTER:
            counterVal = FUNC2(p_FmPcdPlcrRegs->profileRegs.fmpl_perpc);
            break;
        case e_FM_PCD_PLCR_PROFILE_RECOLOURED_YELLOW_PACKET_TOTAL_COUNTER:
            counterVal = FUNC2(p_FmPcdPlcrRegs->profileRegs.fmpl_perypc);
            break;
        case e_FM_PCD_PLCR_PROFILE_RECOLOURED_RED_PACKET_TOTAL_COUNTER:
            counterVal = FUNC2(p_FmPcdPlcrRegs->profileRegs.fmpl_perrpc);
            break;
        default:
            FUNC5(MAJOR, E_INVALID_SELECTION, NO_MSG);
            break;
    }
    FUNC4(p_FmPcd->p_FmPcdPlcr, intFlags);

    return counterVal;
}