
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint64_t ;
typedef TYPE_2__* t_Handle ;
struct TYPE_24__ {scalar_t__ high; scalar_t__ low; } ;
typedef TYPE_3__ t_FmPhysAddr ;
typedef int t_FmPcdPrs ;
typedef int t_FmPcdPlcr ;
struct TYPE_25__ {int h_App; int f_ExceptionId; int f_Exception; scalar_t__ prsSupport; scalar_t__ plcrSupport; scalar_t__ kgSupport; int hc; scalar_t__ useHostCommand; int h_Fm; } ;
typedef TYPE_4__ t_FmPcdParams ;
typedef int t_FmPcdKg ;
typedef int t_FmPcdHcParams ;
struct TYPE_23__ {scalar_t__ guestId; int physicalMuramBase; void* h_ShadowSpinlock; scalar_t__ ccShadowAlign; scalar_t__ ccShadowSize; int * p_CcShadow; int h_App; int f_FmPcdIndexedException; int f_Exception; scalar_t__ numOfEnabledGuestPartitionsPcds; int acquiredLocksLst; int freeLocksLst; void* h_Spinlock; int * p_FmPcdPrs; int * p_FmPcdPlcr; int * p_FmPcdKg; int h_Hc; int params; struct TYPE_23__* h_FmPcd; int h_Fm; TYPE_1__* netEnvs; scalar_t__ h_FmMuram; struct TYPE_23__* p_FmPcdDriverParam; } ;
typedef TYPE_2__ t_FmPcdDriverParam ;
typedef TYPE_2__ t_FmPcd ;
typedef TYPE_2__ t_FmHcParams ;
typedef int hcParams ;
struct TYPE_22__ {int clsPlanGrpId; } ;


 int E_INVALID_HANDLE ;
 int E_INVALID_STATE ;
 int E_NO_MEMORY ;
 size_t FM_MAX_NUM_OF_PORTS ;
 int FM_PCD_Free (TYPE_2__*) ;
 scalar_t__ FmGetGuestId (int ) ;
 scalar_t__ FmGetMuramHandle (int ) ;
 int FmGetPhysicalMuramBase (int ,TYPE_3__*) ;
 int FmHcConfigAndInit (TYPE_2__*) ;
 int ILLEGAL_CLS_PLAN ;
 int INIT_LIST (int *) ;
 scalar_t__ KgConfig (TYPE_2__*,TYPE_4__*) ;
 int MAJOR ;
 scalar_t__ NCSW_MASTER_ID ;
 scalar_t__ PlcrConfig (TYPE_2__*,TYPE_4__*) ;
 scalar_t__ PrsConfig (TYPE_2__*,TYPE_4__*) ;
 int REPORT_ERROR (int ,int ,char*) ;
 int SANITY_CHECK_RETURN_VALUE (TYPE_4__*,int ,int *) ;
 int XX_Free (TYPE_2__*) ;
 void* XX_InitSpinlock () ;
 scalar_t__ XX_Malloc (int) ;
 int memcpy (size_t*,size_t*,int) ;
 int memset (TYPE_2__*,int ,int) ;

t_Handle FM_PCD_Config(t_FmPcdParams *p_FmPcdParams)
{
    t_FmPcd *p_FmPcd = ((void*)0);
    t_FmPhysAddr physicalMuramBase;
    uint8_t i;

    SANITY_CHECK_RETURN_VALUE(p_FmPcdParams, E_INVALID_HANDLE,((void*)0));

    p_FmPcd = (t_FmPcd *) XX_Malloc(sizeof(t_FmPcd));
    if (!p_FmPcd)
    {
        REPORT_ERROR(MAJOR, E_NO_MEMORY, ("FM PCD"));
        return ((void*)0);
    }
    memset(p_FmPcd, 0, sizeof(t_FmPcd));

    p_FmPcd->p_FmPcdDriverParam = (t_FmPcdDriverParam *) XX_Malloc(sizeof(t_FmPcdDriverParam));
    if (!p_FmPcd->p_FmPcdDriverParam)
    {
        XX_Free(p_FmPcd);
        REPORT_ERROR(MAJOR, E_NO_MEMORY, ("FM PCD Driver Param"));
        return ((void*)0);
    }
    memset(p_FmPcd->p_FmPcdDriverParam, 0, sizeof(t_FmPcdDriverParam));

    p_FmPcd->h_Fm = p_FmPcdParams->h_Fm;
    p_FmPcd->guestId = FmGetGuestId(p_FmPcd->h_Fm);
    p_FmPcd->h_FmMuram = FmGetMuramHandle(p_FmPcd->h_Fm);
    if (p_FmPcd->h_FmMuram)
    {
        FmGetPhysicalMuramBase(p_FmPcdParams->h_Fm, &physicalMuramBase);
        p_FmPcd->physicalMuramBase = (uint64_t)((uint64_t)(&physicalMuramBase)->low | ((uint64_t)(&physicalMuramBase)->high << 32));
    }

    for (i = 0; i<FM_MAX_NUM_OF_PORTS; i++)
        p_FmPcd->netEnvs[i].clsPlanGrpId = ILLEGAL_CLS_PLAN;

    if (p_FmPcdParams->useHostCommand)
    {
        t_FmHcParams hcParams;

        memset(&hcParams, 0, sizeof(hcParams));
        hcParams.h_Fm = p_FmPcd->h_Fm;
        hcParams.h_FmPcd = (t_Handle)p_FmPcd;
        memcpy((uint8_t*)&hcParams.params, (uint8_t*)&p_FmPcdParams->hc, sizeof(t_FmPcdHcParams));
        p_FmPcd->h_Hc = FmHcConfigAndInit(&hcParams);
        if (!p_FmPcd->h_Hc)
        {
            REPORT_ERROR(MAJOR, E_NO_MEMORY, ("FM PCD HC"));
            FM_PCD_Free(p_FmPcd);
            return ((void*)0);
        }
    }
    else if (p_FmPcd->guestId != NCSW_MASTER_ID)
        REPORT_ERROR(MAJOR, E_INVALID_STATE, ("No Host Command defined for a guest partition."));

    if (p_FmPcdParams->kgSupport)
    {
        p_FmPcd->p_FmPcdKg = (t_FmPcdKg *)KgConfig(p_FmPcd, p_FmPcdParams);
        if (!p_FmPcd->p_FmPcdKg)
        {
            REPORT_ERROR(MAJOR, E_NO_MEMORY, ("FM PCD Keygen"));
            FM_PCD_Free(p_FmPcd);
            return ((void*)0);
        }
    }

    if (p_FmPcdParams->plcrSupport)
    {
        p_FmPcd->p_FmPcdPlcr = (t_FmPcdPlcr *)PlcrConfig(p_FmPcd, p_FmPcdParams);
        if (!p_FmPcd->p_FmPcdPlcr)
        {
            REPORT_ERROR(MAJOR, E_NO_MEMORY, ("FM PCD Policer"));
            FM_PCD_Free(p_FmPcd);
            return ((void*)0);
        }
    }

    if (p_FmPcdParams->prsSupport)
    {
        p_FmPcd->p_FmPcdPrs = (t_FmPcdPrs *)PrsConfig(p_FmPcd, p_FmPcdParams);
        if (!p_FmPcd->p_FmPcdPrs)
        {
            REPORT_ERROR(MAJOR, E_NO_MEMORY, ("FM PCD Parser"));
            FM_PCD_Free(p_FmPcd);
            return ((void*)0);
        }
    }

    p_FmPcd->h_Spinlock = XX_InitSpinlock();
    if (!p_FmPcd->h_Spinlock)
    {
        REPORT_ERROR(MAJOR, E_NO_MEMORY, ("FM PCD spinlock"));
        FM_PCD_Free(p_FmPcd);
        return ((void*)0);
    }
    INIT_LIST(&p_FmPcd->freeLocksLst);
    INIT_LIST(&p_FmPcd->acquiredLocksLst);

    p_FmPcd->numOfEnabledGuestPartitionsPcds = 0;

    p_FmPcd->f_Exception = p_FmPcdParams->f_Exception;
    p_FmPcd->f_FmPcdIndexedException = p_FmPcdParams->f_ExceptionId;
    p_FmPcd->h_App = p_FmPcdParams->h_App;

    p_FmPcd->p_CcShadow = ((void*)0);
    p_FmPcd->ccShadowSize = 0;
    p_FmPcd->ccShadowAlign = 0;

    p_FmPcd->h_ShadowSpinlock = XX_InitSpinlock();
    if (!p_FmPcd->h_ShadowSpinlock)
    {
        REPORT_ERROR(MAJOR, E_NO_MEMORY, ("FM PCD shadow spinlock"));
        FM_PCD_Free(p_FmPcd);
        return ((void*)0);
    }

    return p_FmPcd;
}
