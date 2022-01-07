
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_3__ {int maxFrameLength; struct TYPE_3__* p_FmPortDriverParam; } ;
typedef TYPE_1__ t_FmPort ;
typedef int t_Error ;


 int E_INVALID_HANDLE ;
 int E_OK ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_1__*,int ) ;

t_Error FM_PORT_ConfigMaxFrameLength(t_Handle h_FmPort, uint16_t length)
{
    t_FmPort *p_FmPort = (t_FmPort*)h_FmPort;

    SANITY_CHECK_RETURN_ERROR(p_FmPort, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(p_FmPort->p_FmPortDriverParam, E_INVALID_HANDLE);

    p_FmPort->maxFrameLength = length;

    return E_OK;
}
