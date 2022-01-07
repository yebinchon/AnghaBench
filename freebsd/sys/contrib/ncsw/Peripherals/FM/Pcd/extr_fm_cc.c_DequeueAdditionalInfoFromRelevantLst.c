
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int p_Next; } ;
typedef TYPE_1__ t_List ;
struct TYPE_8__ {int node; } ;
typedef TYPE_2__ t_CcNodeInformation ;


 TYPE_2__* CC_NODE_F_OBJECT (int ) ;
 int NCSW_LIST_DelAndInit (int *) ;
 int NCSW_LIST_IsEmpty (TYPE_1__*) ;

__attribute__((used)) static t_CcNodeInformation * DequeueAdditionalInfoFromRelevantLst(
        t_List *p_List)
{
    t_CcNodeInformation *p_CcNodeInfo = ((void*)0);

    if (!NCSW_LIST_IsEmpty(p_List))
    {
        p_CcNodeInfo = CC_NODE_F_OBJECT(p_List->p_Next);
        NCSW_LIST_DelAndInit(&p_CcNodeInfo->node);
    }

    return p_CcNodeInfo;
}
