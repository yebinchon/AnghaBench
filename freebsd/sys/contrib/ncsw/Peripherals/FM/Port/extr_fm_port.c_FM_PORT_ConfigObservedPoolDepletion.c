
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_5__ {int poolsParams; int poolDepletionParams; } ;
typedef TYPE_1__ t_FmPortObservedBufPoolDepletion ;
struct TYPE_6__ {scalar_t__ portType; int extBufPools; struct TYPE_6__* p_FmPortDriverParam; int bufPoolDepletion; int enBufPoolDepletion; } ;
typedef TYPE_2__ t_FmPort ;
typedef int t_FmExtPools ;
typedef int t_FmBufPoolDepletion ;
typedef int t_Error ;


 int E_INVALID_HANDLE ;
 int E_INVALID_OPERATION ;
 int E_OK ;
 int MAJOR ;
 int RETURN_ERROR (int ,int ,char*) ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_2__*,int ) ;
 int TRUE ;
 scalar_t__ e_FM_PORT_TYPE_OH_OFFLINE_PARSING ;
 int memcpy (int *,int *,int) ;

t_Error FM_PORT_ConfigObservedPoolDepletion(
        t_Handle h_FmPort,
        t_FmPortObservedBufPoolDepletion *p_FmPortObservedBufPoolDepletion)
{
    t_FmPort *p_FmPort = (t_FmPort*)h_FmPort;

    SANITY_CHECK_RETURN_ERROR(p_FmPort, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(p_FmPort->p_FmPortDriverParam, E_INVALID_HANDLE);
    if (p_FmPort->portType != e_FM_PORT_TYPE_OH_OFFLINE_PARSING)
        RETURN_ERROR(MAJOR, E_INVALID_OPERATION,
                     ("available for OP ports only"));

    p_FmPort->p_FmPortDriverParam->enBufPoolDepletion = TRUE;
    memcpy(&p_FmPort->p_FmPortDriverParam->bufPoolDepletion,
           &p_FmPortObservedBufPoolDepletion->poolDepletionParams,
           sizeof(t_FmBufPoolDepletion));
    memcpy(&p_FmPort->p_FmPortDriverParam->extBufPools,
           &p_FmPortObservedBufPoolDepletion->poolsParams,
           sizeof(t_FmExtPools));

    return E_OK;
}
