
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_10__ {int fmpl_perrpc; int fmpl_perypc; int fmpl_perpc; int fmpl_peypc; int fmpl_pegpc; } ;
struct TYPE_11__ {TYPE_1__ profileRegs; } ;
typedef TYPE_2__ t_FmPcdPlcrRegs ;
struct TYPE_12__ {scalar_t__ absoluteProfileId; TYPE_8__* p_FmPcdPlcr; scalar_t__ h_Hc; struct TYPE_12__* h_FmPcd; } ;
typedef TYPE_3__ t_FmPcdPlcrProfile ;
typedef TYPE_3__ t_FmPcd ;
typedef int e_FmPcdPlcrProfileCounters ;
struct TYPE_13__ {TYPE_2__* p_FmPcdPlcrRegs; } ;


 int E_INVALID_HANDLE ;
 int E_INVALID_SELECTION ;
 int E_INVALID_VALUE ;
 scalar_t__ FM_PCD_PLCR_NUM_ENTRIES ;
 int FmHcPcdPlcrGetProfileCounter (scalar_t__,scalar_t__,int ) ;
 int FmPcdPlcrBuildReadPlcrActionReg (scalar_t__) ;
 int GET_UINT32 (int ) ;
 int MAJOR ;
 char* NO_MSG ;
 int PlcrHwLock (TYPE_8__*) ;
 int PlcrHwUnlock (TYPE_8__*,int ) ;
 int REPORT_ERROR (int ,int ,char*) ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_3__*,int ) ;
 int SANITY_CHECK_RETURN_VALUE (TYPE_2__*,int ,int ) ;
 int WritePar (TYPE_3__*,int ) ;






uint32_t FM_PCD_PlcrProfileGetCounter(t_Handle h_Profile, e_FmPcdPlcrProfileCounters counter)
{
    t_FmPcdPlcrProfile *p_Profile = (t_FmPcdPlcrProfile*)h_Profile;
    t_FmPcd *p_FmPcd;
    uint16_t profileIndx;
    uint32_t intFlags, counterVal = 0;
    t_FmPcdPlcrRegs *p_FmPcdPlcrRegs;

    SANITY_CHECK_RETURN_ERROR(p_Profile, E_INVALID_HANDLE);
    p_FmPcd = p_Profile->h_FmPcd;
    SANITY_CHECK_RETURN_ERROR(p_FmPcd, E_INVALID_HANDLE);

    if (p_FmPcd->h_Hc)
        return FmHcPcdPlcrGetProfileCounter(p_FmPcd->h_Hc, h_Profile, counter);

    p_FmPcdPlcrRegs = p_FmPcd->p_FmPcdPlcr->p_FmPcdPlcrRegs;
    SANITY_CHECK_RETURN_VALUE(p_FmPcdPlcrRegs, E_INVALID_HANDLE, 0);

    profileIndx = p_Profile->absoluteProfileId;

    if (profileIndx >= FM_PCD_PLCR_NUM_ENTRIES)
    {
        REPORT_ERROR(MAJOR, E_INVALID_VALUE, ("profileId too Big "));
        return 0;
    }
    intFlags = PlcrHwLock(p_FmPcd->p_FmPcdPlcr);
    WritePar(p_FmPcd, FmPcdPlcrBuildReadPlcrActionReg(profileIndx));

    switch (counter)
    {
        case 132:
            counterVal = (GET_UINT32(p_FmPcdPlcrRegs->profileRegs.fmpl_pegpc));
            break;
        case 128:
            counterVal = GET_UINT32(p_FmPcdPlcrRegs->profileRegs.fmpl_peypc);
            break;
        case 129:
            counterVal = GET_UINT32(p_FmPcdPlcrRegs->profileRegs.fmpl_perpc);
            break;
        case 130:
            counterVal = GET_UINT32(p_FmPcdPlcrRegs->profileRegs.fmpl_perypc);
            break;
        case 131:
            counterVal = GET_UINT32(p_FmPcdPlcrRegs->profileRegs.fmpl_perrpc);
            break;
        default:
            REPORT_ERROR(MAJOR, E_INVALID_SELECTION, NO_MSG);
            break;
    }
    PlcrHwUnlock(p_FmPcd->p_FmPcdPlcr, intFlags);

    return counterVal;
}
