
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int node; } ;
typedef TYPE_1__ t_FmPcdFrmReplicMember ;
struct TYPE_6__ {int availableMembersList; } ;
typedef TYPE_2__ t_FmPcdFrmReplicGroup ;


 int LIST_AddToTail (int *,int *) ;

__attribute__((used)) static void PutAvailableMember(t_FmPcdFrmReplicGroup *p_ReplicGroup,
                               t_FmPcdFrmReplicMember *p_ReplicMember)
{
    LIST_AddToTail(&p_ReplicMember->node, &p_ReplicGroup->availableMembersList);
}
