
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_9__ {int fmpl_perrpc; int fmpl_perypc; int fmpl_perpc; int fmpl_peypc; int fmpl_pegpc; } ;
struct TYPE_10__ {TYPE_1__ profileRegs; int absoluteProfileId; TYPE_4__* h_FmPcd; } ;
typedef TYPE_2__ t_FmPcdPlcrRegs ;
typedef TYPE_2__ t_FmPcdPlcrProfile ;
struct TYPE_11__ {TYPE_7__* p_FmPcdPlcr; scalar_t__ h_Hc; } ;
typedef TYPE_4__ t_FmPcd ;
typedef int t_Error ;
typedef int e_FmPcdPlcrProfileCounters ;
struct TYPE_12__ {TYPE_2__* p_FmPcdPlcrRegs; } ;


 int E_INVALID_HANDLE ;
 int E_INVALID_SELECTION ;
 int E_OK ;
 int FmHcPcdPlcrSetProfileCounter (scalar_t__,scalar_t__,int ,int ) ;
 int FmPcdPlcrBuildCounterProfileReg (int ) ;
 int FmPcdPlcrBuildWritePlcrActionReg (int ) ;
 int MAJOR ;
 int NO_MSG ;
 int PlcrHwLock (TYPE_7__*) ;
 int PlcrHwUnlock (TYPE_7__*,int ) ;
 int RETURN_ERROR (int ,int ,int ) ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_2__*,int ) ;
 int WRITE_UINT32 (int ,int ) ;
 int WritePar (TYPE_4__*,int ) ;






t_Error FM_PCD_PlcrProfileSetCounter(t_Handle h_Profile, e_FmPcdPlcrProfileCounters counter, uint32_t value)
{
    t_FmPcdPlcrProfile *p_Profile = (t_FmPcdPlcrProfile*)h_Profile;
    t_FmPcd *p_FmPcd;
    uint16_t profileIndx;
    uint32_t tmpReg32, intFlags;
    t_FmPcdPlcrRegs *p_FmPcdPlcrRegs;

    SANITY_CHECK_RETURN_ERROR(p_Profile, E_INVALID_HANDLE);

    p_FmPcd = p_Profile->h_FmPcd;
    profileIndx = p_Profile->absoluteProfileId;

    if (p_FmPcd->h_Hc)
        return FmHcPcdPlcrSetProfileCounter(p_FmPcd->h_Hc, h_Profile, counter, value);

    p_FmPcdPlcrRegs = p_FmPcd->p_FmPcdPlcr->p_FmPcdPlcrRegs;
    SANITY_CHECK_RETURN_ERROR(p_FmPcdPlcrRegs, E_INVALID_HANDLE);

    intFlags = PlcrHwLock(p_FmPcd->p_FmPcdPlcr);
    switch (counter)
    {
        case 132:
             WRITE_UINT32(p_FmPcdPlcrRegs->profileRegs.fmpl_pegpc, value);
             break;
        case 128:
             WRITE_UINT32(p_FmPcdPlcrRegs->profileRegs.fmpl_peypc, value);
             break;
        case 129:
             WRITE_UINT32(p_FmPcdPlcrRegs->profileRegs.fmpl_perpc, value);
             break;
        case 130:
             WRITE_UINT32(p_FmPcdPlcrRegs->profileRegs.fmpl_perypc ,value);
             break;
        case 131:
             WRITE_UINT32(p_FmPcdPlcrRegs->profileRegs.fmpl_perrpc ,value);
             break;
        default:
            PlcrHwUnlock(p_FmPcd->p_FmPcdPlcr, intFlags);
            RETURN_ERROR(MAJOR, E_INVALID_SELECTION, NO_MSG);
    }




    tmpReg32 = FmPcdPlcrBuildWritePlcrActionReg(profileIndx);
    tmpReg32 |= FmPcdPlcrBuildCounterProfileReg(counter);
    WritePar(p_FmPcd, tmpReg32);
    PlcrHwUnlock(p_FmPcd->p_FmPcdPlcr, intFlags);

    return E_OK;
}
