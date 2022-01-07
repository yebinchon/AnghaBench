
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_4__ {size_t numOfGrps; TYPE_1__* fmPcdGroupParam; } ;
typedef TYPE_2__ t_FmPcdCcTree ;
typedef int t_Error ;
struct TYPE_3__ {size_t baseGroupEntry; int totalBitsMask; } ;


 int E_INVALID_HANDLE ;
 int E_OK ;
 int MAJOR ;
 int RETURN_ERROR (int ,int ,char*) ;
 int SANITY_CHECK_RETURN_ERROR (scalar_t__,int ) ;

t_Error FmPcdCcGetGrpParams(t_Handle h_FmPcdCcTree, uint8_t grpId,
                            uint32_t *p_GrpBits, uint8_t *p_GrpBase)
{
    t_FmPcdCcTree *p_FmPcdCcTree = (t_FmPcdCcTree *)h_FmPcdCcTree;

    SANITY_CHECK_RETURN_ERROR(h_FmPcdCcTree, E_INVALID_HANDLE);

    if (grpId >= p_FmPcdCcTree->numOfGrps)
        RETURN_ERROR(MAJOR, E_INVALID_HANDLE,
                     ("grpId you asked > numOfGroup of relevant tree"));

    *p_GrpBits = p_FmPcdCcTree->fmPcdGroupParam[grpId].totalBitsMask;
    *p_GrpBase = p_FmPcdCcTree->fmPcdGroupParam[grpId].baseGroupEntry;

    return E_OK;
}
