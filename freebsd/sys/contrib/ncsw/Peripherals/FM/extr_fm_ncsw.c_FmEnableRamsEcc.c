
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_6__ {TYPE_1__* p_FmStateStruct; } ;
typedef TYPE_2__ t_Fm ;
typedef int t_Error ;
struct TYPE_5__ {int internalCall; int ramsEccOwners; } ;


 int E_INVALID_HANDLE ;
 int FM_EnableRamsEcc (TYPE_2__*) ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_2__*,int ) ;
 int TRUE ;

t_Error FmEnableRamsEcc(t_Handle h_Fm)
{
    t_Fm *p_Fm = (t_Fm*)h_Fm;

    SANITY_CHECK_RETURN_ERROR(p_Fm, E_INVALID_HANDLE);

    p_Fm->p_FmStateStruct->ramsEccOwners++;
    p_Fm->p_FmStateStruct->internalCall = TRUE;

    return FM_EnableRamsEcc(p_Fm);
}
