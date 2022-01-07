
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int t_List ;
typedef int t_Handle ;
struct TYPE_5__ {int h_StatsCounters; int h_StatsAd; } ;
typedef TYPE_1__ t_FmPcdStatsObj ;


 int ASSERT_COND (TYPE_1__*) ;
 TYPE_1__* DequeueStatsObj (int *) ;
 int FM_MURAM_FreeMem (int ,int ) ;
 int NCSW_LIST_IsEmpty (int *) ;
 int XX_Free (TYPE_1__*) ;

__attribute__((used)) static void FreeStatObjects(t_List *p_List, t_Handle h_FmMuram)
{
    t_FmPcdStatsObj *p_StatsObj;

    while (!NCSW_LIST_IsEmpty(p_List))
    {
        p_StatsObj = DequeueStatsObj(p_List);
        ASSERT_COND(p_StatsObj);

        FM_MURAM_FreeMem(h_FmMuram, p_StatsObj->h_StatsAd);
        FM_MURAM_FreeMem(h_FmMuram, p_StatsObj->h_StatsCounters);

        XX_Free(p_StatsObj);
    }
}
