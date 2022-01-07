
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* p_FmPcdPlcr; int guestId; int h_Fm; } ;
typedef TYPE_2__ t_FmPcd ;
typedef int t_Error ;
struct TYPE_6__ {scalar_t__ h_HwSpinlock; scalar_t__ h_SwSpinlock; scalar_t__ partNumOfPlcrProfiles; int partPlcrProfilesBase; int sharedProfilesIds; scalar_t__ numOfSharedProfiles; } ;


 int E_OK ;
 int FmUnregisterIntr (int ,int ,int ,int ) ;
 int FreeSharedProfiles (TYPE_2__*,scalar_t__,int ) ;
 int PlcrFreeProfilesForPartition (TYPE_2__*,int ,scalar_t__,int ) ;
 int XX_FreeSpinlock (scalar_t__) ;
 int e_FM_INTR_TYPE_ERR ;
 int e_FM_INTR_TYPE_NORMAL ;
 int e_FM_MOD_PLCR ;

t_Error PlcrFree(t_FmPcd *p_FmPcd)
{
    FmUnregisterIntr(p_FmPcd->h_Fm, e_FM_MOD_PLCR, 0, e_FM_INTR_TYPE_ERR);
    FmUnregisterIntr(p_FmPcd->h_Fm, e_FM_MOD_PLCR, 0, e_FM_INTR_TYPE_NORMAL);

    if (p_FmPcd->p_FmPcdPlcr->numOfSharedProfiles)
        FreeSharedProfiles(p_FmPcd,
                           p_FmPcd->p_FmPcdPlcr->numOfSharedProfiles,
                           p_FmPcd->p_FmPcdPlcr->sharedProfilesIds);

    if (p_FmPcd->p_FmPcdPlcr->partNumOfPlcrProfiles)
        PlcrFreeProfilesForPartition(p_FmPcd,
                                     p_FmPcd->p_FmPcdPlcr->partPlcrProfilesBase,
                                     p_FmPcd->p_FmPcdPlcr->partNumOfPlcrProfiles,
                                     p_FmPcd->guestId);

    if (p_FmPcd->p_FmPcdPlcr->h_SwSpinlock)
        XX_FreeSpinlock(p_FmPcd->p_FmPcdPlcr->h_SwSpinlock);

    if (p_FmPcd->p_FmPcdPlcr->h_HwSpinlock)
        XX_FreeSpinlock(p_FmPcd->p_FmPcdPlcr->h_HwSpinlock);

    return E_OK;
}
