
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int rtFramesDepth; struct TYPE_3__* p_QmDriverParams; } ;
typedef TYPE_1__ t_Qm ;
typedef scalar_t__ t_Handle ;
typedef int t_Error ;


 int E_INVALID_HANDLE ;
 int E_OK ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_1__*,int ) ;

t_Error QM_ConfigRTFramesDepth(t_Handle h_Qm, uint32_t rtFramesDepth)
{
    t_Qm *p_Qm = (t_Qm *)h_Qm;

    SANITY_CHECK_RETURN_ERROR(p_Qm, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(p_Qm->p_QmDriverParams, E_INVALID_HANDLE);

    p_Qm->p_QmDriverParams->rtFramesDepth = rtFramesDepth;

    return E_OK;
}
