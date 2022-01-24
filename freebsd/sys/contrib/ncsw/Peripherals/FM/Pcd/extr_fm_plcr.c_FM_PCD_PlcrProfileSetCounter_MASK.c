#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  scalar_t__ t_Handle ;
struct TYPE_9__ {int /*<<< orphan*/  fmpl_perrpc; int /*<<< orphan*/  fmpl_perypc; int /*<<< orphan*/  fmpl_perpc; int /*<<< orphan*/  fmpl_peypc; int /*<<< orphan*/  fmpl_pegpc; } ;
struct TYPE_10__ {TYPE_1__ profileRegs; int /*<<< orphan*/  absoluteProfileId; TYPE_4__* h_FmPcd; } ;
typedef  TYPE_2__ t_FmPcdPlcrRegs ;
typedef  TYPE_2__ t_FmPcdPlcrProfile ;
struct TYPE_11__ {TYPE_7__* p_FmPcdPlcr; scalar_t__ h_Hc; } ;
typedef  TYPE_4__ t_FmPcd ;
typedef  int /*<<< orphan*/  t_Error ;
typedef  int /*<<< orphan*/  e_FmPcdPlcrProfileCounters ;
struct TYPE_12__ {TYPE_2__* p_FmPcdPlcrRegs; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_INVALID_SELECTION ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  NO_MSG ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ) ; 
#define  e_FM_PCD_PLCR_PROFILE_GREEN_PACKET_TOTAL_COUNTER 132 
#define  e_FM_PCD_PLCR_PROFILE_RECOLOURED_RED_PACKET_TOTAL_COUNTER 131 
#define  e_FM_PCD_PLCR_PROFILE_RECOLOURED_YELLOW_PACKET_TOTAL_COUNTER 130 
#define  e_FM_PCD_PLCR_PROFILE_RED_PACKET_TOTAL_COUNTER 129 
#define  e_FM_PCD_PLCR_PROFILE_YELLOW_PACKET_TOTAL_COUNTER 128 

t_Error FUNC9(t_Handle h_Profile, e_FmPcdPlcrProfileCounters counter, uint32_t value)
{
    t_FmPcdPlcrProfile  *p_Profile = (t_FmPcdPlcrProfile*)h_Profile;
    t_FmPcd             *p_FmPcd;
    uint16_t            profileIndx;
    uint32_t            tmpReg32, intFlags;
    t_FmPcdPlcrRegs     *p_FmPcdPlcrRegs;

    FUNC6(p_Profile, E_INVALID_HANDLE);

    p_FmPcd = p_Profile->h_FmPcd;
    profileIndx = p_Profile->absoluteProfileId;

    if (p_FmPcd->h_Hc)
        return FUNC0(p_FmPcd->h_Hc, h_Profile, counter, value);

    p_FmPcdPlcrRegs = p_FmPcd->p_FmPcdPlcr->p_FmPcdPlcrRegs;
    FUNC6(p_FmPcdPlcrRegs, E_INVALID_HANDLE);

    intFlags = FUNC3(p_FmPcd->p_FmPcdPlcr);
    switch (counter)
    {
        case e_FM_PCD_PLCR_PROFILE_GREEN_PACKET_TOTAL_COUNTER:
             FUNC7(p_FmPcdPlcrRegs->profileRegs.fmpl_pegpc, value);
             break;
        case e_FM_PCD_PLCR_PROFILE_YELLOW_PACKET_TOTAL_COUNTER:
             FUNC7(p_FmPcdPlcrRegs->profileRegs.fmpl_peypc, value);
             break;
        case e_FM_PCD_PLCR_PROFILE_RED_PACKET_TOTAL_COUNTER:
             FUNC7(p_FmPcdPlcrRegs->profileRegs.fmpl_perpc, value);
             break;
        case e_FM_PCD_PLCR_PROFILE_RECOLOURED_YELLOW_PACKET_TOTAL_COUNTER:
             FUNC7(p_FmPcdPlcrRegs->profileRegs.fmpl_perypc ,value);
             break;
        case e_FM_PCD_PLCR_PROFILE_RECOLOURED_RED_PACKET_TOTAL_COUNTER:
             FUNC7(p_FmPcdPlcrRegs->profileRegs.fmpl_perrpc ,value);
             break;
        default:
            FUNC4(p_FmPcd->p_FmPcdPlcr, intFlags);
            FUNC5(MAJOR, E_INVALID_SELECTION, NO_MSG);
    }

    /*  Activate the atomic write action by writing FMPL_PAR with: GO=1, RW=1, PSI=0, PNUM =
     *  Profile Number, PWSEL=0xFFFF (select all words).
     */
    tmpReg32 = FUNC2(profileIndx);
    tmpReg32 |= FUNC1(counter);
    FUNC8(p_FmPcd, tmpReg32);
    FUNC4(p_FmPcd->p_FmPcdPlcr, intFlags);

    return E_OK;
}