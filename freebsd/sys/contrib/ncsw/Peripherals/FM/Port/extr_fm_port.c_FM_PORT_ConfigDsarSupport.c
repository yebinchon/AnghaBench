
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
typedef int t_FmPortDsarTablesSizes ;
struct TYPE_3__ {int autoResMaxSizes; } ;
struct TYPE_4__ {TYPE_1__ deepSleepVars; } ;
typedef TYPE_2__ t_FmPort ;
typedef int t_Error ;
struct t_FmPortDsarTablesSizes {int dummy; } ;


 int E_OK ;
 int XX_Malloc (int) ;
 int memcpy (int ,int *,int) ;

t_Error FM_PORT_ConfigDsarSupport(t_Handle h_FmPortRx,
                                  t_FmPortDsarTablesSizes *params)
{
    t_FmPort *p_FmPort = (t_FmPort *)h_FmPortRx;
    p_FmPort->deepSleepVars.autoResMaxSizes = XX_Malloc(
            sizeof(struct t_FmPortDsarTablesSizes));
    memcpy(p_FmPort->deepSleepVars.autoResMaxSizes, params,
           sizeof(struct t_FmPortDsarTablesSizes));
    return E_OK;
}
