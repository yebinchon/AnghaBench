
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t_Handle ;
typedef int t_Error ;


 int BmPoolFree (int ,int ) ;
 int E_INVALID_HANDLE ;
 int FALSE ;
 int SANITY_CHECK_RETURN_ERROR (int ,int ) ;

t_Error BM_POOL_Free(t_Handle h_BmPool)
{
    SANITY_CHECK_RETURN_ERROR(h_BmPool, E_INVALID_HANDLE);

    return BmPoolFree(h_BmPool, FALSE);
}
