
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_4__ {int bdRingSize; } ;
struct TYPE_5__ {TYPE_1__ im; struct TYPE_5__* p_FmPortDriverParam; struct TYPE_5__* imEn; } ;
typedef TYPE_2__ t_FmPort ;
typedef int t_Error ;


 int E_INVALID_HANDLE ;
 int E_INVALID_STATE ;
 int E_OK ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_2__*,int ) ;

t_Error FM_PORT_ConfigIMTxBdRingLength(t_Handle h_FmPort, uint16_t newVal)
{
    t_FmPort *p_FmPort = (t_FmPort*)h_FmPort;

    SANITY_CHECK_RETURN_ERROR(p_FmPort, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(p_FmPort->imEn, E_INVALID_STATE);
    SANITY_CHECK_RETURN_ERROR(p_FmPort->p_FmPortDriverParam, E_INVALID_HANDLE);

    p_FmPort->im.bdRingSize = newVal;

    return E_OK;
}
