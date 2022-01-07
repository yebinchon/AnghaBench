
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ guestId; TYPE_1__* p_FmPcdKg; } ;
typedef TYPE_2__ t_FmPcd ;
typedef scalar_t__ t_Error ;
struct TYPE_6__ {scalar_t__ h_HwSpinlock; } ;


 int E_NO_MEMORY ;
 scalar_t__ E_OK ;
 scalar_t__ KgInitGuest (TYPE_2__*) ;
 scalar_t__ KgInitMaster (TYPE_2__*) ;
 int MAJOR ;
 scalar_t__ NCSW_MASTER_ID ;
 int RETURN_ERROR (int ,int ,char*) ;
 int XX_FreeSpinlock (scalar_t__) ;
 scalar_t__ XX_InitSpinlock () ;

t_Error KgInit(t_FmPcd *p_FmPcd)
{
    t_Error err = E_OK;

    p_FmPcd->p_FmPcdKg->h_HwSpinlock = XX_InitSpinlock();
    if (!p_FmPcd->p_FmPcdKg->h_HwSpinlock)
        RETURN_ERROR(MAJOR, E_NO_MEMORY, ("FM KG HW spinlock"));

    if (p_FmPcd->guestId == NCSW_MASTER_ID)
        err = KgInitMaster(p_FmPcd);
    else
        err = KgInitGuest(p_FmPcd);

    if (err != E_OK)
    {
        if (p_FmPcd->p_FmPcdKg->h_HwSpinlock)
            XX_FreeSpinlock(p_FmPcd->p_FmPcdKg->h_HwSpinlock);
    }

    return err;
}
