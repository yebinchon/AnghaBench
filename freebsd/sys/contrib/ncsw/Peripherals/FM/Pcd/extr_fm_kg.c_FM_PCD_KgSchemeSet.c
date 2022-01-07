
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint32_t ;
typedef int * t_Handle ;
struct TYPE_22__ {int update; } ;
struct TYPE_20__ {size_t relativeSchemeId; int * h_Scheme; } ;
struct TYPE_23__ {scalar_t__ modify; TYPE_3__ schemeCounter; TYPE_1__ id; } ;
typedef TYPE_4__ t_FmPcdKgSchemeParams ;
struct TYPE_24__ {size_t schemeId; scalar_t__ p_Lock; TYPE_6__* h_FmPcd; } ;
typedef TYPE_5__ t_FmPcdKgScheme ;
struct TYPE_25__ {size_t numOfSchemes; size_t* schemesIds; struct TYPE_25__* p_FmPcdKg; TYPE_2__* p_IndirectAccessRegs; scalar_t__ h_Hc; TYPE_5__* schemes; } ;
typedef TYPE_6__ t_FmPcd ;
typedef scalar_t__ t_Error ;
struct fman_kg_scheme_regs {int * kgse_gec; int kgse_vsp; int kgse_om; int kgse_fqb; int kgse_spc; int kgse_hc; int kgse_bmcl; int kgse_bmch; int kgse_ekfc; int kgse_ekdv; int kgse_dv1; int kgse_dv0; int kgse_mv; int kgse_mode; int kgse_ccbs; int kgse_ppc; } ;
struct TYPE_21__ {struct fman_kg_scheme_regs schemeRegs; } ;


 scalar_t__ BuildSchemeRegs (int *,TYPE_4__*,struct fman_kg_scheme_regs*) ;
 int DBG (int ,char*) ;
 scalar_t__ E_ALREADY_EXISTS ;
 int E_INVALID_HANDLE ;
 scalar_t__ E_NOT_AVAILABLE ;
 scalar_t__ E_NOT_IN_RANGE ;
 scalar_t__ E_OK ;
 size_t FM_KG_NUM_OF_GENERIC_REGS ;
 scalar_t__ FmHcPcdKgSetScheme (scalar_t__,int *,struct fman_kg_scheme_regs*,int ) ;
 scalar_t__ FmPcdAcquireLock (TYPE_6__*) ;
 int FmPcdKgBuildWriteSchemeActionReg (size_t,int ) ;
 scalar_t__ FmPcdKgIsSchemeValidSw (TYPE_5__*) ;
 int FmPcdReleaseLock (TYPE_6__*,scalar_t__) ;
 int KgHwLock (TYPE_6__*) ;
 int KgHwUnlock (TYPE_6__*,int ) ;
 int KgSchemeFlagTryLock (TYPE_5__*) ;
 int KgSchemeFlagUnlock (TYPE_5__*) ;
 int MAJOR ;
 char* NO_MSG ;
 int REPORT_ERROR (int ,scalar_t__,char*) ;
 int SANITY_CHECK_RETURN_VALUE (TYPE_6__*,int ,int *) ;
 int TRACE ;
 int ValidateSchemeSw (TYPE_5__*) ;
 int WRITE_UINT32 (int ,int ) ;
 int WriteKgarWait (TYPE_6__*,int ) ;
 int memset (TYPE_5__*,int ,int) ;

t_Handle FM_PCD_KgSchemeSet(t_Handle h_FmPcd, t_FmPcdKgSchemeParams *p_SchemeParams)
{
    t_FmPcd *p_FmPcd;
    struct fman_kg_scheme_regs schemeRegs;
    struct fman_kg_scheme_regs *p_MemRegs;
    uint8_t i;
    t_Error err = E_OK;
    uint32_t tmpKgarReg;
    uint32_t intFlags;
    uint8_t physicalSchemeId, relativeSchemeId = 0;
    t_FmPcdKgScheme *p_Scheme;

    if (p_SchemeParams->modify)
    {
        p_Scheme = (t_FmPcdKgScheme *)p_SchemeParams->id.h_Scheme;
        p_FmPcd = p_Scheme->h_FmPcd;

        SANITY_CHECK_RETURN_VALUE(p_FmPcd, E_INVALID_HANDLE, ((void*)0));
        SANITY_CHECK_RETURN_VALUE(p_FmPcd->p_FmPcdKg, E_INVALID_HANDLE, ((void*)0));

        if (!FmPcdKgIsSchemeValidSw(p_Scheme))
        {
            REPORT_ERROR(MAJOR, E_ALREADY_EXISTS,
                         ("Scheme is invalid"));
            return ((void*)0);
        }

        if (!KgSchemeFlagTryLock(p_Scheme))
        {
            DBG(TRACE, ("Scheme Try Lock - BUSY"));

            p_SchemeParams->id.h_Scheme = ((void*)0);
            return ((void*)0);
        }
    }
    else
    {
        p_FmPcd = (t_FmPcd*)h_FmPcd;

        SANITY_CHECK_RETURN_VALUE(p_FmPcd, E_INVALID_HANDLE, ((void*)0));
        SANITY_CHECK_RETURN_VALUE(p_FmPcd->p_FmPcdKg, E_INVALID_HANDLE, ((void*)0));

        relativeSchemeId = p_SchemeParams->id.relativeSchemeId;

        if (relativeSchemeId >= p_FmPcd->p_FmPcdKg->numOfSchemes)
        {
            REPORT_ERROR(MAJOR, E_NOT_IN_RANGE, ("relative-scheme-id %d!", relativeSchemeId));
            return ((void*)0);
        }

        p_Scheme = &p_FmPcd->p_FmPcdKg->schemes[relativeSchemeId];
        if (FmPcdKgIsSchemeValidSw(p_Scheme))
        {
            REPORT_ERROR(MAJOR, E_ALREADY_EXISTS,
                         ("Scheme id (%d)!", relativeSchemeId));
            return ((void*)0);
        }

        memset(p_Scheme, 0, sizeof(t_FmPcdKgScheme));

        p_Scheme->schemeId = p_FmPcd->p_FmPcdKg->schemesIds[relativeSchemeId];
        p_Scheme->h_FmPcd = p_FmPcd;

        p_Scheme->p_Lock = FmPcdAcquireLock(p_FmPcd);
        if (!p_Scheme->p_Lock)
            REPORT_ERROR(MAJOR, E_NOT_AVAILABLE, ("FM KG Scheme lock obj!"));
    }

    err = BuildSchemeRegs((t_Handle)p_Scheme, p_SchemeParams, &schemeRegs);
    if (err)
    {
        REPORT_ERROR(MAJOR, err, NO_MSG);
        if (p_SchemeParams->modify)
            KgSchemeFlagUnlock(p_Scheme);
        if (!p_SchemeParams->modify &&
            p_Scheme->p_Lock)
            FmPcdReleaseLock(p_FmPcd, p_Scheme->p_Lock);
        return ((void*)0);
    }

    if (p_FmPcd->h_Hc)
    {
        err = FmHcPcdKgSetScheme(p_FmPcd->h_Hc,
                                 (t_Handle)p_Scheme,
                                 &schemeRegs,
                                 p_SchemeParams->schemeCounter.update);
        if (p_SchemeParams->modify)
            KgSchemeFlagUnlock(p_Scheme);
        if (err)
        {
            if (!p_SchemeParams->modify &&
                p_Scheme->p_Lock)
                FmPcdReleaseLock(p_FmPcd, p_Scheme->p_Lock);
            return ((void*)0);
        }
        if (!p_SchemeParams->modify)
            ValidateSchemeSw(p_Scheme);
        return (t_Handle)p_Scheme;
    }

    physicalSchemeId = p_Scheme->schemeId;


    p_MemRegs = &p_FmPcd->p_FmPcdKg->p_IndirectAccessRegs->schemeRegs;
    intFlags = KgHwLock(p_FmPcd->p_FmPcdKg);
    WRITE_UINT32(p_MemRegs->kgse_ppc, schemeRegs.kgse_ppc);
    WRITE_UINT32(p_MemRegs->kgse_ccbs, schemeRegs.kgse_ccbs);
    WRITE_UINT32(p_MemRegs->kgse_mode, schemeRegs.kgse_mode);
    WRITE_UINT32(p_MemRegs->kgse_mv, schemeRegs.kgse_mv);
    WRITE_UINT32(p_MemRegs->kgse_dv0, schemeRegs.kgse_dv0);
    WRITE_UINT32(p_MemRegs->kgse_dv1, schemeRegs.kgse_dv1);
    WRITE_UINT32(p_MemRegs->kgse_ekdv, schemeRegs.kgse_ekdv);
    WRITE_UINT32(p_MemRegs->kgse_ekfc, schemeRegs.kgse_ekfc);
    WRITE_UINT32(p_MemRegs->kgse_bmch, schemeRegs.kgse_bmch);
    WRITE_UINT32(p_MemRegs->kgse_bmcl, schemeRegs.kgse_bmcl);
    WRITE_UINT32(p_MemRegs->kgse_hc, schemeRegs.kgse_hc);
    WRITE_UINT32(p_MemRegs->kgse_spc, schemeRegs.kgse_spc);
    WRITE_UINT32(p_MemRegs->kgse_fqb, schemeRegs.kgse_fqb);
    WRITE_UINT32(p_MemRegs->kgse_om, schemeRegs.kgse_om);
    WRITE_UINT32(p_MemRegs->kgse_vsp, schemeRegs.kgse_vsp);
    for (i=0 ; i<FM_KG_NUM_OF_GENERIC_REGS ; i++)
        WRITE_UINT32(p_MemRegs->kgse_gec[i], schemeRegs.kgse_gec[i]);


    tmpKgarReg = FmPcdKgBuildWriteSchemeActionReg(physicalSchemeId, p_SchemeParams->schemeCounter.update);

    WriteKgarWait(p_FmPcd, tmpKgarReg);
    KgHwUnlock(p_FmPcd->p_FmPcdKg, intFlags);

    if (!p_SchemeParams->modify)
        ValidateSchemeSw(p_Scheme);
    else
        KgSchemeFlagUnlock(p_Scheme);

    return (t_Handle)p_Scheme;
}
