
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_8__ {scalar_t__ guestId; scalar_t__ h_ShadowSpinlock; scalar_t__ h_Spinlock; int h_Fm; int fmPcdModuleName; int * h_Hc; struct TYPE_8__* p_FmPcdPrs; struct TYPE_8__* p_FmPcdPlcr; struct TYPE_8__* p_FmPcdKg; struct TYPE_8__* p_FmPcdDriverParam; scalar_t__ enabled; scalar_t__ capwapFrameIdAddr; int h_FmMuram; scalar_t__ ipv6FrameIdAddr; } ;
typedef TYPE_1__ t_FmPcd ;
typedef int t_Error ;


 int E_OK ;
 int FM_MURAM_FreeMem (int ,int ) ;
 int FM_PCD_Disable (TYPE_1__*) ;
 int FmHcFree (int *) ;
 int FmUnregisterPcd (int ) ;
 int KgFree (TYPE_1__*) ;
 int MINOR ;
 scalar_t__ NCSW_MASTER_ID ;
 int NO_MSG ;
 int PlcrFree (TYPE_1__*) ;
 int PrsFree (TYPE_1__*) ;
 int RETURN_ERROR (int ,int ,int ) ;
 int ReleaseFreeLocksLst (TYPE_1__*) ;
 int UINT_TO_PTR (scalar_t__) ;
 int XX_Free (TYPE_1__*) ;
 int XX_FreeSpinlock (scalar_t__) ;
 int XX_IpcUnregisterMsgHandler (int ) ;

t_Error FM_PCD_Free(t_Handle h_FmPcd)
{
    t_FmPcd *p_FmPcd =(t_FmPcd *)h_FmPcd;
    t_Error err = E_OK;

    if (p_FmPcd->ipv6FrameIdAddr)
        FM_MURAM_FreeMem(p_FmPcd->h_FmMuram, UINT_TO_PTR(p_FmPcd->ipv6FrameIdAddr));

    if (p_FmPcd->capwapFrameIdAddr)
        FM_MURAM_FreeMem(p_FmPcd->h_FmMuram, UINT_TO_PTR(p_FmPcd->capwapFrameIdAddr));

    if (p_FmPcd->enabled)
        FM_PCD_Disable(p_FmPcd);

    if (p_FmPcd->p_FmPcdDriverParam)
    {
        XX_Free(p_FmPcd->p_FmPcdDriverParam);
        p_FmPcd->p_FmPcdDriverParam = ((void*)0);
    }

    if (p_FmPcd->p_FmPcdKg)
    {
        if ((err = KgFree(p_FmPcd)) != E_OK)
            RETURN_ERROR(MINOR, err, NO_MSG);
        XX_Free(p_FmPcd->p_FmPcdKg);
        p_FmPcd->p_FmPcdKg = ((void*)0);
    }

    if (p_FmPcd->p_FmPcdPlcr)
    {
        PlcrFree(p_FmPcd);
        XX_Free(p_FmPcd->p_FmPcdPlcr);
        p_FmPcd->p_FmPcdPlcr = ((void*)0);
    }

    if (p_FmPcd->p_FmPcdPrs)
    {
        if (p_FmPcd->guestId == NCSW_MASTER_ID)
            PrsFree(p_FmPcd);
        XX_Free(p_FmPcd->p_FmPcdPrs);
        p_FmPcd->p_FmPcdPrs = ((void*)0);
    }

    if (p_FmPcd->h_Hc)
    {
        FmHcFree(p_FmPcd->h_Hc);
        p_FmPcd->h_Hc = ((void*)0);
    }

    XX_IpcUnregisterMsgHandler(p_FmPcd->fmPcdModuleName);

    FmUnregisterPcd(p_FmPcd->h_Fm);

    ReleaseFreeLocksLst(p_FmPcd);

    if (p_FmPcd->h_Spinlock)
        XX_FreeSpinlock(p_FmPcd->h_Spinlock);

    if (p_FmPcd->h_ShadowSpinlock)
        XX_FreeSpinlock(p_FmPcd->h_ShadowSpinlock);

    XX_Free(p_FmPcd);

    return E_OK;
}
