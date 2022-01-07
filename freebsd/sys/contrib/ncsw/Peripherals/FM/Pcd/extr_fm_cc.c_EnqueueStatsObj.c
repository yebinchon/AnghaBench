
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int t_List ;
struct TYPE_3__ {int node; } ;
typedef TYPE_1__ t_FmPcdStatsObj ;


 int NCSW_LIST_AddToTail (int *,int *) ;

__attribute__((used)) static __inline__ void EnqueueStatsObj(t_List *p_List,
                                       t_FmPcdStatsObj *p_StatsObj)
{
    NCSW_LIST_AddToTail(&p_StatsObj->node, p_List);
}
