
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int t_Handle ;
struct TYPE_2__ {scalar_t__ portType; int pcdEngines; int lock; int * h_ReassemblyTree; int h_FmPcd; scalar_t__ includeInPrsStatistics; int hardwarePortId; int netEnvId; int h_Spinlock; scalar_t__ imEn; int p_FmPortDriverParam; } ;
typedef TYPE_1__ t_FmPort ;
typedef scalar_t__ t_Error ;


 int DBG (int ,char*) ;
 scalar_t__ DeletePcd (int) ;
 scalar_t__ DetachPCD (int) ;
 scalar_t__ ERROR_CODE (int ) ;
 int E_BUSY ;
 int E_INVALID_HANDLE ;
 scalar_t__ E_INVALID_OPERATION ;
 int E_INVALID_STATE ;
 scalar_t__ E_OK ;
 scalar_t__ FALSE ;
 scalar_t__ FM_PCD_CcRootDelete (int *) ;
 int FM_PCD_PRS ;
 int FmPcdDecNetEnvOwners (int ,int ) ;
 int FmPcdLockTryLockAll (int ) ;
 int FmPcdLockUnlockAll (int ) ;
 int FmPcdPrsIncludePortInStatistics (int ,int ,scalar_t__) ;
 int MAJOR ;
 char* NO_MSG ;
 int RELEASE_LOCK (int ) ;
 int RETURN_ERROR (int ,scalar_t__,char*) ;
 int SANITY_CHECK_RETURN_ERROR (int,int ) ;
 int TRACE ;
 int TRY_LOCK (int ,int *) ;
 scalar_t__ e_FM_PORT_TYPE_OH_OFFLINE_PARSING ;
 scalar_t__ e_FM_PORT_TYPE_RX ;
 scalar_t__ e_FM_PORT_TYPE_RX_10G ;

t_Error FM_PORT_DeletePCD(t_Handle h_FmPort)
{
    t_FmPort *p_FmPort = (t_FmPort*)h_FmPort;
    t_Error err = E_OK;

    SANITY_CHECK_RETURN_ERROR(h_FmPort, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(!p_FmPort->p_FmPortDriverParam, E_INVALID_STATE);

    if (p_FmPort->imEn)
        RETURN_ERROR(MAJOR, E_INVALID_OPERATION,
                     ("available for non-independant mode ports only"));

    if ((p_FmPort->portType != e_FM_PORT_TYPE_RX_10G)
            && (p_FmPort->portType != e_FM_PORT_TYPE_RX)
            && (p_FmPort->portType != e_FM_PORT_TYPE_OH_OFFLINE_PARSING))
        RETURN_ERROR( MAJOR, E_INVALID_OPERATION,
                     ("available for Rx and offline parsing ports only"));

    if (!TRY_LOCK(p_FmPort->h_Spinlock, &p_FmPort->lock))
    {
        DBG(TRACE, ("FM Port Try Lock - BUSY"));
        return ERROR_CODE(E_BUSY);
    }

    err = DetachPCD(h_FmPort);
    if (err)
    {
        RELEASE_LOCK(p_FmPort->lock);
        RETURN_ERROR(MAJOR, err, NO_MSG);
    }

    FmPcdDecNetEnvOwners(p_FmPort->h_FmPcd, p_FmPort->netEnvId);


    if ((p_FmPort->pcdEngines & FM_PCD_PRS) && p_FmPort->includeInPrsStatistics)
    {
        FmPcdPrsIncludePortInStatistics(p_FmPort->h_FmPcd,
                                        p_FmPort->hardwarePortId, FALSE);
        p_FmPort->includeInPrsStatistics = FALSE;
    }

    if (!FmPcdLockTryLockAll(p_FmPort->h_FmPcd))
    {
        RELEASE_LOCK(p_FmPort->lock);
        DBG(TRACE, ("Try LockAll - BUSY"));
        return ERROR_CODE(E_BUSY);
    }

    err = DeletePcd(h_FmPort);
    FmPcdLockUnlockAll(p_FmPort->h_FmPcd);
    if (err)
    {
        RELEASE_LOCK(p_FmPort->lock);
        RETURN_ERROR(MAJOR, err, NO_MSG);
    }

    if (p_FmPort->h_ReassemblyTree)
    {
        err = FM_PCD_CcRootDelete(p_FmPort->h_ReassemblyTree);
        if (err)
        {
            RELEASE_LOCK(p_FmPort->lock);
            RETURN_ERROR(MAJOR, err, NO_MSG);
        }
        p_FmPort->h_ReassemblyTree = ((void*)0);
    }RELEASE_LOCK(p_FmPort->lock);

    return err;
}
