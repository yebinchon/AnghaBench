
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_4__ {int deq_prefetch_opt; } ;
struct TYPE_5__ {scalar_t__ portType; TYPE_1__ dfltCfg; struct TYPE_5__* p_FmPortDriverParam; } ;
typedef TYPE_2__ t_FmPort ;
typedef int t_Error ;
typedef enum fman_port_deq_prefetch { ____Placeholder_fman_port_deq_prefetch } fman_port_deq_prefetch ;
typedef scalar_t__ e_FmPortDeqPrefetchOption ;


 int E_INVALID_HANDLE ;
 int E_INVALID_OPERATION ;
 int E_OK ;
 int MAJOR ;
 int RETURN_ERROR (int ,int ,char*) ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_2__*,int ) ;
 scalar_t__ e_FM_PORT_TYPE_RX ;
 scalar_t__ e_FM_PORT_TYPE_RX_10G ;

t_Error FM_PORT_ConfigDeqPrefetchOption(
        t_Handle h_FmPort, e_FmPortDeqPrefetchOption deqPrefetchOption)
{
    t_FmPort *p_FmPort = (t_FmPort*)h_FmPort;

    SANITY_CHECK_RETURN_ERROR(p_FmPort, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(p_FmPort->p_FmPortDriverParam, E_INVALID_HANDLE);
    if ((p_FmPort->portType == e_FM_PORT_TYPE_RX_10G)
            || (p_FmPort->portType == e_FM_PORT_TYPE_RX))
        RETURN_ERROR(MAJOR, E_INVALID_OPERATION,
                     ("not available for Rx ports"));
    p_FmPort->p_FmPortDriverParam->dfltCfg.deq_prefetch_opt =
            (enum fman_port_deq_prefetch)deqPrefetchOption;

    return E_OK;
}
