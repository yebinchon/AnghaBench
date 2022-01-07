
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef int t_List ;
typedef scalar_t__ t_Handle ;
struct TYPE_6__ {int node; } ;
typedef TYPE_1__ t_CcNodeInformation ;


 int E_NO_MEMORY ;
 int INIT_LIST (int *) ;
 int MAJOR ;
 int NCSW_LIST_AddToTail (int *,int *) ;
 int REPORT_ERROR (int ,int ,char*) ;
 int XX_LockIntrSpinlock (scalar_t__) ;
 scalar_t__ XX_Malloc (int) ;
 int XX_UnlockIntrSpinlock (scalar_t__,int ) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 int memset (TYPE_1__*,int ,int) ;

void EnqueueNodeInfoToRelevantLst(t_List *p_List, t_CcNodeInformation *p_CcInfo,
                                  t_Handle h_Spinlock)
{
    t_CcNodeInformation *p_CcInformation;
    uint32_t intFlags = 0;

    p_CcInformation = (t_CcNodeInformation *)XX_Malloc(
            sizeof(t_CcNodeInformation));

    if (p_CcInformation)
    {
        memset(p_CcInformation, 0, sizeof(t_CcNodeInformation));
        memcpy(p_CcInformation, p_CcInfo, sizeof(t_CcNodeInformation));
        INIT_LIST(&p_CcInformation->node);

        if (h_Spinlock)
            intFlags = XX_LockIntrSpinlock(h_Spinlock);

        NCSW_LIST_AddToTail(&p_CcInformation->node, p_List);

        if (h_Spinlock)
            XX_UnlockIntrSpinlock(h_Spinlock, intFlags);
    }
    else
        REPORT_ERROR(MAJOR, E_NO_MEMORY, ("CC Node Information"));
}
