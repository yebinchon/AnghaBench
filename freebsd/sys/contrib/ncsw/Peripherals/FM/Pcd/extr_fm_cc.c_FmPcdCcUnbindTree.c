
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ t_Handle ;
typedef int t_FmPcdCcTree ;
typedef int t_Error ;


 int E_INVALID_HANDLE ;
 int E_OK ;
 int FALSE ;
 int SANITY_CHECK_RETURN_ERROR (scalar_t__,int ) ;
 int UNUSED (scalar_t__) ;
 int UpdateCcRootOwner (int *,int ) ;

t_Error FmPcdCcUnbindTree(t_Handle h_FmPcd, t_Handle h_FmPcdCcTree)
{
    t_FmPcdCcTree *p_FmPcdCcTree = (t_FmPcdCcTree *)h_FmPcdCcTree;



    UNUSED(h_FmPcd);

    SANITY_CHECK_RETURN_ERROR(h_FmPcdCcTree, E_INVALID_HANDLE);

    UpdateCcRootOwner(p_FmPcdCcTree, FALSE);

    return E_OK;
}
