#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ t_Handle ;
struct TYPE_4__ {int dma_swap_data; } ;
struct TYPE_5__ {TYPE_1__ dfltCfg; struct TYPE_5__* p_FmPortDriverParam; } ;
typedef  TYPE_2__ t_FmPort ;
typedef  int /*<<< orphan*/  t_Error ;
typedef  enum fman_port_dma_swap { ____Placeholder_fman_port_dma_swap } fman_port_dma_swap ;
typedef  scalar_t__ e_FmDmaSwapOption ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALID_HANDLE ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 

t_Error FUNC1(t_Handle h_FmPort, e_FmDmaSwapOption swapData)
{
    t_FmPort *p_FmPort = (t_FmPort*)h_FmPort;

    FUNC0(p_FmPort, E_INVALID_HANDLE);
    FUNC0(p_FmPort->p_FmPortDriverParam, E_INVALID_HANDLE);

    p_FmPort->p_FmPortDriverParam->dfltCfg.dma_swap_data =
            (enum fman_port_dma_swap)swapData;

    return E_OK;
}