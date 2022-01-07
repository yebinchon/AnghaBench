
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
typedef int t_FmPortRsrc ;
struct TYPE_3__ {int setNumOfTasks; struct TYPE_3__* p_FmPortDriverParam; int tasks; } ;
typedef TYPE_1__ t_FmPort ;
typedef int t_Error ;


 int E_INVALID_HANDLE ;
 int E_OK ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_1__*,int ) ;
 int TRUE ;
 int memcpy (int *,int *,int) ;

t_Error FM_PORT_ConfigNumOfTasks(t_Handle h_FmPort, t_FmPortRsrc *p_NumOfTasks)
{
    t_FmPort *p_FmPort = (t_FmPort*)h_FmPort;

    SANITY_CHECK_RETURN_ERROR(p_FmPort, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(p_FmPort->p_FmPortDriverParam, E_INVALID_HANDLE);

    memcpy(&p_FmPort->tasks, p_NumOfTasks, sizeof(t_FmPortRsrc));
    p_FmPort->p_FmPortDriverParam->setNumOfTasks = TRUE;
    return E_OK;
}
