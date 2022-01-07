
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_3__ {scalar_t__ portType; int port; int p_FmPortDriverParam; } ;
typedef TYPE_1__ t_FmPort ;


 int E_INVALID_HANDLE ;
 int E_INVALID_STATE ;
 int MINOR ;
 int REPORT_ERROR (int ,int ,char*) ;
 int SANITY_CHECK_RETURN_ERROR (int,int ) ;
 int SANITY_CHECK_RETURN_VALUE (TYPE_1__*,int ,int ) ;
 scalar_t__ e_FM_PORT_TYPE_RX ;
 scalar_t__ e_FM_PORT_TYPE_RX_10G ;
 int fman_port_get_bpool_counter (int *,int ) ;

uint32_t FM_PORT_GetAllocBufCounter(t_Handle h_FmPort, uint8_t poolId)
{
    t_FmPort *p_FmPort = (t_FmPort*)h_FmPort;

    SANITY_CHECK_RETURN_VALUE(p_FmPort, E_INVALID_HANDLE, 0);
    SANITY_CHECK_RETURN_ERROR(!p_FmPort->p_FmPortDriverParam, E_INVALID_STATE);

    if ((p_FmPort->portType != e_FM_PORT_TYPE_RX)
            && (p_FmPort->portType == e_FM_PORT_TYPE_RX_10G))
    {
        REPORT_ERROR(MINOR, E_INVALID_STATE, ("Requested counter is not available for non-Rx ports"));
        return 0;
    }
    return fman_port_get_bpool_counter(&p_FmPort->port, poolId);
}
