
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
typedef int t_FmPortDsarTablesSizes ;
struct TYPE_3__ {int * autoResMaxSizes; } ;
struct TYPE_4__ {TYPE_1__ deepSleepVars; } ;
typedef TYPE_2__ t_FmPort ;



t_FmPortDsarTablesSizes* FM_PORT_GetDsarTablesMaxSizes(t_Handle h_FmPortRx)
{
    t_FmPort *p_FmPort = (t_FmPort *)h_FmPortRx;
    return p_FmPort->deepSleepVars.autoResMaxSizes;
}
