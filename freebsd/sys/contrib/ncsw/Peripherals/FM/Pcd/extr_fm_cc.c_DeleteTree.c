
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fmPortsLst; scalar_t__ ccTreeBaseAddr; } ;
typedef TYPE_1__ t_FmPcdCcTree ;
typedef int t_FmPcd ;


 int FM_MURAM_FreeMem (int ,int ) ;
 int FmPcdGetMuramHandle (int *) ;
 int ReleaseLst (int *) ;
 int UINT_TO_PTR (scalar_t__) ;
 int XX_Free (TYPE_1__*) ;

__attribute__((used)) static void DeleteTree(t_FmPcdCcTree *p_FmPcdTree, t_FmPcd *p_FmPcd)
{
    if (p_FmPcdTree)
    {
        if (p_FmPcdTree->ccTreeBaseAddr)
        {
            FM_MURAM_FreeMem(FmPcdGetMuramHandle(p_FmPcd),
                             UINT_TO_PTR(p_FmPcdTree->ccTreeBaseAddr));
            p_FmPcdTree->ccTreeBaseAddr = 0;
        }

        ReleaseLst(&p_FmPcdTree->fmPortsLst);

        XX_Free(p_FmPcdTree);
    }
}
