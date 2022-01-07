
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
typedef int t_Error ;
struct TYPE_3__ {int noBuffCtxt; struct TYPE_3__* p_BmPoolDriverParams; } ;
typedef TYPE_1__ t_BmPool ;


 int E_INVALID_HANDLE ;
 int E_OK ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_1__*,int ) ;

t_Error BM_POOL_ConfigBuffContextMode(t_Handle h_BmPool, bool en)
{
    t_BmPool *p_BmPool = (t_BmPool *)h_BmPool;

    SANITY_CHECK_RETURN_ERROR(p_BmPool, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(p_BmPool->p_BmPoolDriverParams, E_INVALID_HANDLE);

    p_BmPool->noBuffCtxt = !en;

    return E_OK;
}
