
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_14__ {scalar_t__ p_Lock; TYPE_8__* p_FmPcdPlcr; scalar_t__ h_Hc; int absoluteProfileId; struct TYPE_14__* h_FmPcd; } ;
typedef TYPE_3__ t_FmPcdPlcrProfile ;
typedef TYPE_3__ t_FmPcd ;
typedef int t_Error ;
struct TYPE_15__ {TYPE_2__* p_FmPcdPlcrRegs; } ;
struct TYPE_12__ {int fmpl_pemode; } ;
struct TYPE_13__ {TYPE_1__ profileRegs; } ;


 int E_INVALID_HANDLE ;
 int E_OK ;
 int FALSE ;
 int FM_PCD_PLCR_PEMODE_PI ;
 int FmHcPcdPlcrDeleteProfile (scalar_t__,scalar_t__) ;
 int FmPcdPlcrBuildWritePlcrActionRegs (int ) ;
 int FmPcdPlcrInvalidateProfileSw (TYPE_3__*,int ) ;
 int FmPcdReleaseLock (TYPE_3__*,scalar_t__) ;
 int PlcrHwLock (TYPE_8__*) ;
 int PlcrHwUnlock (TYPE_8__*,int ) ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_3__*,int ) ;
 int UpdateRequiredActionFlag (TYPE_3__*,int ,int ) ;
 int WRITE_UINT32 (int ,int ) ;
 int WritePar (TYPE_3__*,int ) ;

t_Error FM_PCD_PlcrProfileDelete(t_Handle h_Profile)
{
    t_FmPcdPlcrProfile *p_Profile = (t_FmPcdPlcrProfile*)h_Profile;
    t_FmPcd *p_FmPcd;
    uint16_t profileIndx;
    uint32_t tmpReg32, intFlags;
    t_Error err;

    SANITY_CHECK_RETURN_ERROR(p_Profile, E_INVALID_HANDLE);
    p_FmPcd = p_Profile->h_FmPcd;
    SANITY_CHECK_RETURN_ERROR(p_FmPcd, E_INVALID_HANDLE);

    profileIndx = p_Profile->absoluteProfileId;

    UpdateRequiredActionFlag(p_FmPcd, profileIndx, FALSE);

    FmPcdPlcrInvalidateProfileSw(p_FmPcd,profileIndx);

    if (p_FmPcd->h_Hc)
    {
        err = FmHcPcdPlcrDeleteProfile(p_FmPcd->h_Hc, h_Profile);
        if (p_Profile->p_Lock)

            FmPcdReleaseLock(p_FmPcd, p_Profile->p_Lock);

        return err;
    }

    intFlags = PlcrHwLock(p_FmPcd->p_FmPcdPlcr);
    WRITE_UINT32(p_FmPcd->p_FmPcdPlcr->p_FmPcdPlcrRegs->profileRegs.fmpl_pemode, ~FM_PCD_PLCR_PEMODE_PI);

    tmpReg32 = FmPcdPlcrBuildWritePlcrActionRegs(profileIndx);
    WritePar(p_FmPcd, tmpReg32);
    PlcrHwUnlock(p_FmPcd->p_FmPcdPlcr, intFlags);


    if (p_Profile->p_Lock)

        FmPcdReleaseLock(p_FmPcd, p_Profile->p_Lock);



    return E_OK;
}
