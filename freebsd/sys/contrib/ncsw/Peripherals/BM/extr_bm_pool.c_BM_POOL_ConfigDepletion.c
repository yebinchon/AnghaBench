
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ t_Handle ;
typedef int t_Error ;
struct TYPE_5__ {int depletionThresholds; struct TYPE_5__* p_BmPoolDriverParams; struct TYPE_5__* f_Depletion; int useDepletion; } ;
typedef TYPE_1__ t_BmPool ;
typedef TYPE_1__ t_BmDepletionCallback ;


 int E_INVALID_HANDLE ;
 int E_OK ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_1__*,int ) ;
 int TRUE ;
 int memcpy (int *,int *,int) ;

t_Error BM_POOL_ConfigDepletion(t_Handle h_BmPool, t_BmDepletionCallback *f_Depletion, uint32_t *p_Thresholds)
{
    t_BmPool *p_BmPool = (t_BmPool *)h_BmPool;

    SANITY_CHECK_RETURN_ERROR(p_BmPool, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(p_BmPool->p_BmPoolDriverParams, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(f_Depletion, E_INVALID_HANDLE);

    p_BmPool->p_BmPoolDriverParams->useDepletion = TRUE;
    p_BmPool->f_Depletion = f_Depletion;
    memcpy(&p_BmPool->p_BmPoolDriverParams->depletionThresholds,
           p_Thresholds,
           sizeof(p_BmPool->p_BmPoolDriverParams->depletionThresholds));

    return E_OK;
}
