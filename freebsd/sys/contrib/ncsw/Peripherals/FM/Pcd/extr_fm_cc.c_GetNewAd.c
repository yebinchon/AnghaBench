
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int * t_Handle ;
struct TYPE_5__ {scalar_t__ h_FmPcd; } ;
typedef TYPE_1__ t_FmPcdCcTree ;
struct TYPE_6__ {scalar_t__ maxNumOfKeys; scalar_t__ h_FmPcd; } ;
typedef TYPE_2__ t_FmPcdCcNode ;
struct TYPE_7__ {int * p_CcShadow; } ;
typedef TYPE_3__ t_FmPcd ;


 int E_NO_MEMORY ;
 scalar_t__ FM_MURAM_AllocMem (int ,int ,int ) ;
 int FM_PCD_CC_AD_ENTRY_SIZE ;
 int FM_PCD_CC_AD_TABLE_ALIGN ;
 int FmPcdGetMuramHandle (TYPE_3__*) ;
 int MAJOR ;
 int REPORT_ERROR (int ,int ,char*) ;

__attribute__((used)) static __inline__ t_Handle GetNewAd(t_Handle h_FmPcdCcNodeOrTree, bool isTree)
{
    t_FmPcd *p_FmPcd;
    t_Handle h_Ad;

    if (isTree)
        p_FmPcd = (t_FmPcd *)(((t_FmPcdCcTree *)h_FmPcdCcNodeOrTree)->h_FmPcd);
    else
        p_FmPcd = (t_FmPcd *)(((t_FmPcdCcNode *)h_FmPcdCcNodeOrTree)->h_FmPcd);

    if ((isTree && p_FmPcd->p_CcShadow)
            || (!isTree && ((t_FmPcdCcNode *)h_FmPcdCcNodeOrTree)->maxNumOfKeys))
    {
        if (!p_FmPcd->p_CcShadow)
        {
            REPORT_ERROR(MAJOR, E_NO_MEMORY, ("CC Shadow not allocated"));
            return ((void*)0);
        }

        h_Ad = p_FmPcd->p_CcShadow;
    }
    else
    {
        h_Ad = (t_Handle)FM_MURAM_AllocMem(FmPcdGetMuramHandle(p_FmPcd),
                                           FM_PCD_CC_AD_ENTRY_SIZE,
                                           FM_PCD_CC_AD_TABLE_ALIGN);
        if (!h_Ad)
        {
            REPORT_ERROR(MAJOR, E_NO_MEMORY, ("MURAM allocation for CC node action descriptor"));
            return ((void*)0);
        }
    }

    return h_Ad;
}
