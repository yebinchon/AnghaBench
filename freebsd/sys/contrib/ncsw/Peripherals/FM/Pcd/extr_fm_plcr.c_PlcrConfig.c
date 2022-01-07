
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef size_t uint16_t ;
typedef TYPE_4__* t_Handle ;
typedef int t_FmPcdPlcrRegs ;
struct TYPE_16__ {scalar_t__ partNumOfPlcrProfiles; TYPE_3__* profiles; int partPlcrProfilesBase; int numOfSharedProfiles; int * p_FmPcdPlcrRegs; } ;
typedef TYPE_4__ t_FmPcdPlcr ;
struct TYPE_17__ {scalar_t__ guestId; int exceptions; scalar_t__ partNumOfPlcrProfiles; int partPlcrProfilesBase; TYPE_1__* p_FmPcdDriverParam; int h_Fm; } ;
typedef TYPE_6__ t_FmPcdParams ;
typedef TYPE_6__ t_FmPcd ;
struct TYPE_14__ {scalar_t__ ownerId; } ;
struct TYPE_15__ {TYPE_2__ profilesMng; } ;
struct TYPE_13__ {int plcrAutoRefresh; } ;


 int DEFAULT_fmPcdPlcrErrorExceptions ;
 int DEFAULT_fmPcdPlcrExceptions ;
 int DEFAULT_numOfSharedPlcrProfiles ;
 int DEFAULT_plcrAutoRefresh ;
 int E_NO_MEMORY ;
 size_t FM_PCD_PLCR_NUM_ENTRIES ;
 int FmGetPcdPlcrBaseAddr (int ) ;
 scalar_t__ ILLEGAL_BASE ;
 int MAJOR ;
 scalar_t__ NCSW_MASTER_ID ;
 int REPORT_ERROR (int ,int ,char*) ;
 scalar_t__ UINT_TO_PTR (int ) ;
 int UNUSED (TYPE_6__*) ;
 scalar_t__ XX_Malloc (int) ;
 int memset (TYPE_4__*,int ,int) ;

t_Handle PlcrConfig(t_FmPcd *p_FmPcd, t_FmPcdParams *p_FmPcdParams)
{
    t_FmPcdPlcr *p_FmPcdPlcr;
    uint16_t i=0;

    UNUSED(p_FmPcd);
    UNUSED(p_FmPcdParams);

    p_FmPcdPlcr = (t_FmPcdPlcr *) XX_Malloc(sizeof(t_FmPcdPlcr));
    if (!p_FmPcdPlcr)
    {
        REPORT_ERROR(MAJOR, E_NO_MEMORY, ("FM Policer structure allocation FAILED"));
        return ((void*)0);
    }
    memset(p_FmPcdPlcr, 0, sizeof(t_FmPcdPlcr));
    if (p_FmPcd->guestId == NCSW_MASTER_ID)
    {
        p_FmPcdPlcr->p_FmPcdPlcrRegs = (t_FmPcdPlcrRegs *)UINT_TO_PTR(FmGetPcdPlcrBaseAddr(p_FmPcdParams->h_Fm));
        p_FmPcd->p_FmPcdDriverParam->plcrAutoRefresh = DEFAULT_plcrAutoRefresh;
        p_FmPcd->exceptions |= (DEFAULT_fmPcdPlcrExceptions | DEFAULT_fmPcdPlcrErrorExceptions);
    }

    p_FmPcdPlcr->numOfSharedProfiles = DEFAULT_numOfSharedPlcrProfiles;

    p_FmPcdPlcr->partPlcrProfilesBase = p_FmPcdParams->partPlcrProfilesBase;
    p_FmPcdPlcr->partNumOfPlcrProfiles = p_FmPcdParams->partNumOfPlcrProfiles;

    if ((p_FmPcd->guestId == NCSW_MASTER_ID) &&
        (p_FmPcdPlcr->partNumOfPlcrProfiles == 0))
        p_FmPcdPlcr->partNumOfPlcrProfiles = FM_PCD_PLCR_NUM_ENTRIES;

    for (i=0; i<FM_PCD_PLCR_NUM_ENTRIES; i++)
        p_FmPcdPlcr->profiles[i].profilesMng.ownerId = (uint8_t)ILLEGAL_BASE;

    return p_FmPcdPlcr;
}
