
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_11__ {scalar_t__ p_Lock; int schemeId; scalar_t__ h_FmPcd; } ;
typedef TYPE_3__ t_FmPcdKgScheme ;
struct TYPE_12__ {TYPE_6__* p_FmPcdKg; scalar_t__ h_Hc; } ;
typedef TYPE_4__ t_FmPcd ;
typedef scalar_t__ t_Error ;
struct TYPE_13__ {TYPE_2__* p_IndirectAccessRegs; } ;
struct TYPE_9__ {int kgse_mode; } ;
struct TYPE_10__ {TYPE_1__ schemeRegs; } ;


 int E_INVALID_HANDLE ;
 scalar_t__ E_OK ;
 int FALSE ;
 scalar_t__ FmHcPcdKgDeleteScheme (scalar_t__,scalar_t__) ;
 int FmPcdKgBuildWriteSchemeActionReg (int ,int ) ;
 int FmPcdReleaseLock (TYPE_4__*,scalar_t__) ;
 scalar_t__ InvalidateSchemeSw (scalar_t__) ;
 int KgHwLock (TYPE_6__*) ;
 int KgHwUnlock (TYPE_6__*,int ) ;
 int MINOR ;
 int NO_MSG ;
 int RETURN_ERROR (int ,scalar_t__,int ) ;
 int SANITY_CHECK_RETURN_ERROR (scalar_t__,int ) ;
 int UpdateRequiredActionFlag (scalar_t__,int ) ;
 int WRITE_UINT32 (int ,int ) ;
 int WriteKgarWait (TYPE_4__*,int ) ;

t_Error FM_PCD_KgSchemeDelete(t_Handle h_Scheme)
{
    t_FmPcd *p_FmPcd;
    uint8_t physicalSchemeId;
    uint32_t tmpKgarReg, intFlags;
    t_Error err = E_OK;
    t_FmPcdKgScheme *p_Scheme = (t_FmPcdKgScheme *)h_Scheme;

    SANITY_CHECK_RETURN_ERROR(h_Scheme, E_INVALID_HANDLE);

    p_FmPcd = (t_FmPcd*)(p_Scheme->h_FmPcd);

    UpdateRequiredActionFlag(h_Scheme, FALSE);


    err = InvalidateSchemeSw(h_Scheme);
    if (err)
        RETURN_ERROR(MINOR, err, NO_MSG);

    if (p_FmPcd->h_Hc)
    {
        err = FmHcPcdKgDeleteScheme(p_FmPcd->h_Hc, h_Scheme);
        if (p_Scheme->p_Lock)
            FmPcdReleaseLock(p_FmPcd, p_Scheme->p_Lock);
        return err;
    }

    physicalSchemeId = ((t_FmPcdKgScheme *)h_Scheme)->schemeId;

    intFlags = KgHwLock(p_FmPcd->p_FmPcdKg);

    WRITE_UINT32(p_FmPcd->p_FmPcdKg->p_IndirectAccessRegs->schemeRegs.kgse_mode, 0);


    tmpKgarReg = FmPcdKgBuildWriteSchemeActionReg(physicalSchemeId, FALSE);

    WriteKgarWait(p_FmPcd, tmpKgarReg);
    KgHwUnlock(p_FmPcd->p_FmPcdKg, intFlags);

    if (p_Scheme->p_Lock)
        FmPcdReleaseLock(p_FmPcd, p_Scheme->p_Lock);

    return E_OK;
}
