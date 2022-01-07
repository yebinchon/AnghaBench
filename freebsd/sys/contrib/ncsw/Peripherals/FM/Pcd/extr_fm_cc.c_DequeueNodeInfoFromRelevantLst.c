
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int t_List ;
typedef scalar_t__ t_Handle ;
struct TYPE_5__ {scalar_t__ h_CcNode; int node; } ;
typedef TYPE_1__ t_CcNodeInformation ;


 int ASSERT_COND (TYPE_1__*) ;
 TYPE_1__* CC_NODE_F_OBJECT (int *) ;
 int NCSW_LIST_DelAndInit (int *) ;
 int * NCSW_LIST_FIRST (int *) ;
 scalar_t__ NCSW_LIST_IsEmpty (int *) ;
 int * NCSW_LIST_NEXT (int *) ;
 int XX_Free (TYPE_1__*) ;
 int XX_LockIntrSpinlock (scalar_t__) ;
 int XX_RestoreAllIntr (int ) ;
 int XX_UnlockIntrSpinlock (scalar_t__,int ) ;

void DequeueNodeInfoFromRelevantLst(t_List *p_List, t_Handle h_Info,
                                    t_Handle h_Spinlock)
{
    t_CcNodeInformation *p_CcInformation = ((void*)0);
    uint32_t intFlags = 0;
    t_List *p_Pos;

    if (h_Spinlock)
        intFlags = XX_LockIntrSpinlock(h_Spinlock);

    if (NCSW_LIST_IsEmpty(p_List))
    {
        XX_RestoreAllIntr(intFlags);
        return;
    }

    for (p_Pos = NCSW_LIST_FIRST(p_List); p_Pos != (p_List);
            p_Pos = NCSW_LIST_NEXT(p_Pos))
    {
        p_CcInformation = CC_NODE_F_OBJECT(p_Pos);
        ASSERT_COND(p_CcInformation);
        ASSERT_COND(p_CcInformation->h_CcNode);
        if (p_CcInformation->h_CcNode == h_Info)
            break;
    }

    if (p_CcInformation)
    {
        NCSW_LIST_DelAndInit(&p_CcInformation->node);
        XX_Free(p_CcInformation);
    }

    if (h_Spinlock)
        XX_UnlockIntrSpinlock(h_Spinlock, intFlags);
}
