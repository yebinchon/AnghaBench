
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_2__ {int ccTreeBaseAddr; int numOfEntries; int keyAndNextEngineParams; } ;
typedef TYPE_1__ t_FmPcdCcTree ;
typedef int t_Error ;


 int CcUpdateParam (scalar_t__,scalar_t__,scalar_t__,int ,int ,int ,int,int ,scalar_t__,int ) ;
 int FALSE ;
 int UINT_TO_PTR (int ) ;

__attribute__((used)) static t_Error CcUpdateParams(t_Handle h_FmPcd, t_Handle h_PcdParams,
                              t_Handle h_FmPort, t_Handle h_FmTree,
                              bool validate)
{
    t_FmPcdCcTree *p_CcTree = (t_FmPcdCcTree *)h_FmTree;

    return CcUpdateParam(h_FmPcd, h_PcdParams, h_FmPort,
                         p_CcTree->keyAndNextEngineParams,
                         p_CcTree->numOfEntries,
                         UINT_TO_PTR(p_CcTree->ccTreeBaseAddr), validate, 0,
                         h_FmTree, FALSE);
}
