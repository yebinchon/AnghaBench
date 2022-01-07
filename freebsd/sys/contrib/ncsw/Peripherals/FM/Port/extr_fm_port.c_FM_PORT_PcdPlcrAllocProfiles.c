
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_2__ {int lock; int hardwarePortId; int h_FmPcd; int h_Spinlock; int h_Fm; } ;
typedef TYPE_1__ t_FmPort ;
typedef scalar_t__ t_Error ;


 int ASSERT_COND (int ) ;
 int DBG (int ,char*) ;
 scalar_t__ ERROR_CODE (int ) ;
 int E_BUSY ;
 scalar_t__ E_OK ;
 int FmGetPcdHandle (int ) ;
 scalar_t__ FmPcdPlcrAllocProfiles (int ,int ,int ) ;
 int FmPcdPortRegister (int ,scalar_t__,int ) ;
 int MAJOR ;
 int NO_MSG ;
 int RELEASE_LOCK (int ) ;
 int RETURN_ERROR (int ,scalar_t__,int ) ;
 int TRACE ;
 int TRY_LOCK (int ,int *) ;

t_Error FM_PORT_PcdPlcrAllocProfiles(t_Handle h_FmPort, uint16_t numOfProfiles)
{
    t_FmPort *p_FmPort = (t_FmPort*)h_FmPort;
    t_Error err = E_OK;

    p_FmPort->h_FmPcd = FmGetPcdHandle(p_FmPort->h_Fm);
    ASSERT_COND(p_FmPort->h_FmPcd);

    if (!TRY_LOCK(p_FmPort->h_Spinlock, &p_FmPort->lock))
    {
        DBG(TRACE, ("FM Port Try Lock - BUSY"));
        return ERROR_CODE(E_BUSY);
    }

    if (numOfProfiles)
    {
        err = FmPcdPlcrAllocProfiles(p_FmPort->h_FmPcd,
                                     p_FmPort->hardwarePortId, numOfProfiles);
        if (err)
            RETURN_ERROR(MAJOR, err, NO_MSG);
    }

    FmPcdPortRegister(p_FmPort->h_FmPcd, h_FmPort, p_FmPort->hardwarePortId);

    RELEASE_LOCK(p_FmPort->lock);

    return E_OK;
}
