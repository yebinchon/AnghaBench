
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
struct TYPE_11__ {int schemeId; scalar_t__ h_FmPcd; } ;
typedef TYPE_3__ t_FmPcdKgScheme ;
struct TYPE_12__ {TYPE_6__* p_FmPcdKg; scalar_t__ h_Hc; } ;
typedef TYPE_4__ t_FmPcd ;
typedef int t_Error ;
struct TYPE_13__ {TYPE_2__* p_IndirectAccessRegs; } ;
struct TYPE_9__ {int kgse_spc; int kgse_mode; } ;
struct TYPE_10__ {TYPE_1__ schemeRegs; } ;


 int E_ALREADY_EXISTS ;
 int E_INVALID_HANDLE ;
 int E_INVALID_STATE ;
 int E_NOT_IN_RANGE ;
 int E_OK ;
 scalar_t__ FM_PCD_KG_NUM_OF_SCHEMES ;
 int FmHcPcdKgSetSchemeCounter (scalar_t__,scalar_t__,int ) ;
 int FmPcdKgBuildReadSchemeActionReg (int ) ;
 int FmPcdKgBuildWriteSchemeActionReg (int ,int ) ;
 scalar_t__ FmPcdKgGetRelativeSchemeId (TYPE_4__*,int ) ;
 int FmPcdKgIsSchemeValidSw (scalar_t__) ;
 int GET_UINT32 (int ) ;
 int KG_SCH_MODE_EN ;
 int KgHwLock (TYPE_6__*) ;
 int KgHwUnlock (TYPE_6__*,int ) ;
 int MAJOR ;
 int NO_MSG ;
 int REPORT_ERROR (int ,int ,int ) ;
 int RETURN_ERROR (int ,int ,char*) ;
 int SANITY_CHECK_RETURN_VALUE (scalar_t__,int ,int ) ;
 int TRUE ;
 int WRITE_UINT32 (int ,int ) ;
 int WriteKgarWait (TYPE_4__*,int ) ;

t_Error FM_PCD_KgSchemeSetCounter(t_Handle h_Scheme, uint32_t value)
{
    t_FmPcd *p_FmPcd;
    uint32_t tmpKgarReg, intFlags;
    uint8_t physicalSchemeId;

    SANITY_CHECK_RETURN_VALUE(h_Scheme, E_INVALID_HANDLE, 0);

    p_FmPcd = (t_FmPcd*)(((t_FmPcdKgScheme *)h_Scheme)->h_FmPcd);

    if (!FmPcdKgIsSchemeValidSw(h_Scheme))
        RETURN_ERROR(MAJOR, E_INVALID_STATE, ("Requested scheme is invalid."));

    if (p_FmPcd->h_Hc)
        return FmHcPcdKgSetSchemeCounter(p_FmPcd->h_Hc, h_Scheme, value);

    physicalSchemeId = ((t_FmPcdKgScheme *)h_Scheme)->schemeId;

    if (FmPcdKgGetRelativeSchemeId(p_FmPcd, physicalSchemeId) == FM_PCD_KG_NUM_OF_SCHEMES)
        REPORT_ERROR(MAJOR, E_NOT_IN_RANGE, NO_MSG);


    tmpKgarReg = FmPcdKgBuildReadSchemeActionReg(physicalSchemeId);
    intFlags = KgHwLock(p_FmPcd->p_FmPcdKg);
    WriteKgarWait(p_FmPcd, tmpKgarReg);
    if (!(GET_UINT32(p_FmPcd->p_FmPcdKg->p_IndirectAccessRegs->schemeRegs.kgse_mode) & KG_SCH_MODE_EN))
    {
       KgHwUnlock(p_FmPcd->p_FmPcdKg, intFlags);
       RETURN_ERROR(MAJOR, E_ALREADY_EXISTS, ("Scheme is Invalid"));
    }


    WRITE_UINT32(p_FmPcd->p_FmPcdKg->p_IndirectAccessRegs->schemeRegs.kgse_spc, value);


    tmpKgarReg = FmPcdKgBuildWriteSchemeActionReg(physicalSchemeId, TRUE);

    WriteKgarWait(p_FmPcd, tmpKgarReg);
    KgHwUnlock(p_FmPcd->p_FmPcdKg, intFlags);

    return E_OK;
}
