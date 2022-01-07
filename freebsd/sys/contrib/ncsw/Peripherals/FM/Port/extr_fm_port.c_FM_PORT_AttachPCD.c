
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int t_Handle ;
struct TYPE_2__ {scalar_t__ portType; int lock; int pcdEngines; scalar_t__ h_ReassemblyTree; int h_Spinlock; scalar_t__ imEn; int p_FmPortDriverParam; } ;
typedef TYPE_1__ t_FmPort ;
typedef int t_Error ;


 int AttachPCD (int) ;
 int DBG (int ,char*) ;
 int ERROR_CODE (int ) ;
 int E_BUSY ;
 int E_INVALID_HANDLE ;
 int E_INVALID_OPERATION ;
 int E_INVALID_STATE ;
 int E_OK ;
 int FM_PCD_CC ;
 int MAJOR ;
 int RELEASE_LOCK (int ) ;
 int RETURN_ERROR (int ,int ,char*) ;
 int SANITY_CHECK_RETURN_ERROR (int,int ) ;
 int TRACE ;
 int TRY_LOCK (int ,int *) ;
 scalar_t__ e_FM_PORT_TYPE_OH_OFFLINE_PARSING ;
 scalar_t__ e_FM_PORT_TYPE_RX ;
 scalar_t__ e_FM_PORT_TYPE_RX_10G ;

t_Error FM_PORT_AttachPCD(t_Handle h_FmPort)
{
    t_FmPort *p_FmPort = (t_FmPort*)h_FmPort;
    t_Error err = E_OK;

    SANITY_CHECK_RETURN_ERROR(h_FmPort, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(!p_FmPort->p_FmPortDriverParam, E_INVALID_STATE);

    if (p_FmPort->imEn)
        RETURN_ERROR(MAJOR, E_INVALID_OPERATION,
                     ("available for non-independent mode ports only"));

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

    if (p_FmPort->h_ReassemblyTree)
        p_FmPort->pcdEngines |= FM_PCD_CC;

    err = AttachPCD(h_FmPort);
    RELEASE_LOCK(p_FmPort->lock);

    return err;
}
