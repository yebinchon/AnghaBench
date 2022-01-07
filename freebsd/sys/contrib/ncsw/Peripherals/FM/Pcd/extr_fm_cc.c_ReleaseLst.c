
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t_List ;
typedef int t_CcNodeInformation ;


 int * DequeueAdditionalInfoFromRelevantLst (int *) ;
 int NCSW_LIST_Del (int *) ;
 int NCSW_LIST_IsEmpty (int *) ;
 int XX_Free (int *) ;

void ReleaseLst(t_List *p_List)
{
    t_CcNodeInformation *p_CcNodeInfo = ((void*)0);

    if (!NCSW_LIST_IsEmpty(p_List))
    {
        p_CcNodeInfo = DequeueAdditionalInfoFromRelevantLst(p_List);
        while (p_CcNodeInfo)
        {
            XX_Free(p_CcNodeInfo);
            p_CcNodeInfo = DequeueAdditionalInfoFromRelevantLst(p_List);
        }
    }

    NCSW_LIST_Del(p_List);
}
