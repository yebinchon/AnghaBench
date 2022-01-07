
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ t_Handle ;
typedef int t_Error ;
struct TYPE_3__ {int fbprThreshold; struct TYPE_3__* p_BmDriverParams; } ;
typedef TYPE_1__ t_Bm ;


 int E_INVALID_HANDLE ;
 int E_OK ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_1__*,int ) ;

t_Error BM_ConfigFbprThreshold(t_Handle h_Bm, uint32_t threshold)
{
    t_Bm *p_Bm = (t_Bm *)h_Bm;

    SANITY_CHECK_RETURN_ERROR(p_Bm, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(p_Bm->p_BmDriverParams, E_INVALID_HANDLE);

    p_Bm->p_BmDriverParams->fbprThreshold = threshold;

    return E_OK;
}
