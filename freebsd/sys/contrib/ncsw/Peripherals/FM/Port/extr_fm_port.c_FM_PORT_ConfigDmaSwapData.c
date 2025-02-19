
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_4__ {int dma_swap_data; } ;
struct TYPE_5__ {TYPE_1__ dfltCfg; struct TYPE_5__* p_FmPortDriverParam; } ;
typedef TYPE_2__ t_FmPort ;
typedef int t_Error ;
typedef enum fman_port_dma_swap { ____Placeholder_fman_port_dma_swap } fman_port_dma_swap ;
typedef scalar_t__ e_FmDmaSwapOption ;


 int E_INVALID_HANDLE ;
 int E_OK ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_2__*,int ) ;

t_Error FM_PORT_ConfigDmaSwapData(t_Handle h_FmPort, e_FmDmaSwapOption swapData)
{
    t_FmPort *p_FmPort = (t_FmPort*)h_FmPort;

    SANITY_CHECK_RETURN_ERROR(p_FmPort, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(p_FmPort->p_FmPortDriverParam, E_INVALID_HANDLE);

    p_FmPort->p_FmPortDriverParam->dfltCfg.dma_swap_data =
            (enum fman_port_dma_swap)swapData;

    return E_OK;
}
