
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int node; } ;
typedef TYPE_1__ t_FmPcdFrmReplicMember ;
struct TYPE_6__ {int numOfEntries; } ;
typedef TYPE_2__ t_FmPcdFrmReplicGroup ;


 int ASSERT_COND (int ) ;
 int LIST_DelAndInit (int *) ;

__attribute__((used)) static void RemoveMemberFromList(t_FmPcdFrmReplicGroup *p_ReplicGroup,
                                 t_FmPcdFrmReplicMember *p_CurrentMember)
{
    ASSERT_COND(p_ReplicGroup->numOfEntries);
    LIST_DelAndInit(&p_CurrentMember->node);
    p_ReplicGroup->numOfEntries--;
}
