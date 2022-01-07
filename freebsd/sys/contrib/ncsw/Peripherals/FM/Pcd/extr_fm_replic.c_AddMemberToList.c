
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int t_List ;
struct TYPE_5__ {int node; } ;
typedef TYPE_1__ t_FmPcdFrmReplicMember ;
struct TYPE_6__ {int numOfEntries; } ;
typedef TYPE_2__ t_FmPcdFrmReplicGroup ;


 int LIST_Add (int *,int *) ;

__attribute__((used)) static void AddMemberToList(t_FmPcdFrmReplicGroup *p_ReplicGroup,
                            t_FmPcdFrmReplicMember *p_CurrentMember,
                            t_List *p_ListHead)
{
    LIST_Add(&p_CurrentMember->node, p_ListHead);

    p_ReplicGroup->numOfEntries++;
}
