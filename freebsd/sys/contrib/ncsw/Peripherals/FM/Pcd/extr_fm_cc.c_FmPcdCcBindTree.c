
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_4__ {int ccTreeBaseAddr; } ;
typedef TYPE_1__ t_FmPcdCcTree ;
struct TYPE_5__ {scalar_t__ physicalMuramBase; } ;
typedef TYPE_2__ t_FmPcd ;
typedef scalar_t__ t_Error ;


 scalar_t__ CcUpdateParams (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ) ;
 int E_INVALID_HANDLE ;
 scalar_t__ E_OK ;
 int SANITY_CHECK_RETURN_ERROR (scalar_t__,int ) ;
 int TRUE ;
 int UINT_TO_PTR (int ) ;
 int UpdateCcRootOwner (TYPE_1__*,int ) ;
 scalar_t__ XX_VirtToPhys (int ) ;

t_Error FmPcdCcBindTree(t_Handle h_FmPcd, t_Handle h_PcdParams,
                        t_Handle h_FmPcdCcTree, uint32_t *p_Offset,
                        t_Handle h_FmPort)
{
    t_FmPcd *p_FmPcd = (t_FmPcd*)h_FmPcd;
    t_FmPcdCcTree *p_FmPcdCcTree = (t_FmPcdCcTree *)h_FmPcdCcTree;
    t_Error err = E_OK;

    SANITY_CHECK_RETURN_ERROR(h_FmPcd, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(h_FmPcdCcTree, E_INVALID_HANDLE);



    err = CcUpdateParams(h_FmPcd, h_PcdParams, h_FmPort, h_FmPcdCcTree, TRUE);

    if (err == E_OK)
        UpdateCcRootOwner(p_FmPcdCcTree, TRUE);

    *p_Offset = (uint32_t)(XX_VirtToPhys(
            UINT_TO_PTR(p_FmPcdCcTree->ccTreeBaseAddr))
            - p_FmPcd->physicalMuramBase);

    return err;
}
