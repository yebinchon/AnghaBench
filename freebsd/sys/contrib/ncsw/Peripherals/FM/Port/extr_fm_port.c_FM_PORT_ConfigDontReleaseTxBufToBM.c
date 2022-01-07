
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_3__ {scalar_t__ portType; int dontReleaseBuf; struct TYPE_3__* p_FmPortDriverParam; } ;
typedef TYPE_1__ t_FmPort ;
typedef int t_Error ;


 int E_INVALID_HANDLE ;
 int E_INVALID_OPERATION ;
 int E_OK ;
 int MAJOR ;
 int RETURN_ERROR (int ,int ,char*) ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_1__*,int ) ;
 int TRUE ;
 scalar_t__ e_FM_PORT_TYPE_TX ;
 scalar_t__ e_FM_PORT_TYPE_TX_10G ;

t_Error FM_PORT_ConfigDontReleaseTxBufToBM(t_Handle h_FmPort)
{
    t_FmPort *p_FmPort = (t_FmPort*)h_FmPort;

    SANITY_CHECK_RETURN_ERROR(p_FmPort, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(p_FmPort->p_FmPortDriverParam, E_INVALID_HANDLE);
    if ((p_FmPort->portType != e_FM_PORT_TYPE_TX_10G)
            && (p_FmPort->portType != e_FM_PORT_TYPE_TX))
        RETURN_ERROR(MAJOR, E_INVALID_OPERATION,
                     ("available for Tx ports only"));

    p_FmPort->p_FmPortDriverParam->dontReleaseBuf = TRUE;

    return E_OK;
}
