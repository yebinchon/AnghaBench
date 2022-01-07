
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ portType; } ;
typedef TYPE_1__ t_FmPort ;
typedef int t_Error ;


 int E_OK ;
 int FM_PORT_ModifyCounter (TYPE_1__*,int ,int ) ;
 int e_FM_PORT_COUNTERS_DMA_UTIL ;
 int e_FM_PORT_COUNTERS_FIFO_UTIL ;
 int e_FM_PORT_COUNTERS_QUEUE_UTIL ;
 int e_FM_PORT_COUNTERS_TASK_UTIL ;
 scalar_t__ e_FM_PORT_TYPE_OH_OFFLINE_PARSING ;

__attribute__((used)) static t_Error ClearPerfCnts(t_FmPort *p_FmPort)
{
    if (p_FmPort->portType != e_FM_PORT_TYPE_OH_OFFLINE_PARSING)
        FM_PORT_ModifyCounter(p_FmPort, e_FM_PORT_COUNTERS_QUEUE_UTIL, 0);
    FM_PORT_ModifyCounter(p_FmPort, e_FM_PORT_COUNTERS_TASK_UTIL, 0);
    FM_PORT_ModifyCounter(p_FmPort, e_FM_PORT_COUNTERS_DMA_UTIL, 0);
    FM_PORT_ModifyCounter(p_FmPort, e_FM_PORT_COUNTERS_FIFO_UTIL, 0);
    return E_OK;
}
