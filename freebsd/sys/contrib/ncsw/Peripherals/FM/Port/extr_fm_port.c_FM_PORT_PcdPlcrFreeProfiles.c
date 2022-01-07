
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_2__ {int lock; int hardwarePortId; int h_FmPcd; int h_Spinlock; } ;
typedef TYPE_1__ t_FmPort ;
typedef scalar_t__ t_Error ;


 int DBG (int ,char*) ;
 scalar_t__ ERROR_CODE (int ) ;
 int E_BUSY ;
 scalar_t__ E_OK ;
 scalar_t__ FmPcdPlcrFreeProfiles (int ,int ) ;
 int MAJOR ;
 int NO_MSG ;
 int RELEASE_LOCK (int ) ;
 int RETURN_ERROR (int ,scalar_t__,int ) ;
 int TRACE ;
 int TRY_LOCK (int ,int *) ;

t_Error FM_PORT_PcdPlcrFreeProfiles(t_Handle h_FmPort)
{
    t_FmPort *p_FmPort = (t_FmPort*)h_FmPort;
    t_Error err = E_OK;

    if (!TRY_LOCK(p_FmPort->h_Spinlock, &p_FmPort->lock))
    {
        DBG(TRACE, ("FM Port Try Lock - BUSY"));
        return ERROR_CODE(E_BUSY);
    }

    err = FmPcdPlcrFreeProfiles(p_FmPort->h_FmPcd, p_FmPort->hardwarePortId);

    RELEASE_LOCK(p_FmPort->lock);

    if (err)
        RETURN_ERROR(MAJOR, err, NO_MSG);

    return E_OK;
}
