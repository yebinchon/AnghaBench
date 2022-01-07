
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_2__ {size_t* cgsUsed; } ;
typedef TYPE_1__ t_Qm ;
typedef scalar_t__ t_Handle ;
typedef int t_Error ;


 int E_INVALID_STATE ;
 int E_OK ;
 scalar_t__ FALSE ;
 int MINOR ;
 int RETURN_ERROR (int ,int ,char*) ;

t_Error QmFreeCgId(t_Handle h_Qm, uint8_t cgId)
{
    t_Qm *p_Qm = (t_Qm *)h_Qm;

    if (!p_Qm->cgsUsed[cgId])
        RETURN_ERROR(MINOR, E_INVALID_STATE, ("CG is not in use"));
    else
        p_Qm->cgsUsed[cgId] = (uint8_t)FALSE;

    return E_OK;
}
