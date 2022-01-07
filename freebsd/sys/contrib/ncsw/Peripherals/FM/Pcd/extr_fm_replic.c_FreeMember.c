
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int p_MemberAd; } ;
typedef TYPE_1__ t_FmPcdFrmReplicMember ;
typedef int t_FmPcdFrmReplicGroup ;


 int FM_PCD_CC_AD_ENTRY_SIZE ;
 int IOMemSet32 (int ,int ,int ) ;
 int PutAvailableMember (int *,TYPE_1__*) ;

__attribute__((used)) static void FreeMember(t_FmPcdFrmReplicGroup *p_ReplicGroup,
                       t_FmPcdFrmReplicMember *p_Member)
{




    IOMemSet32(p_Member->p_MemberAd, 0, FM_PCD_CC_AD_ENTRY_SIZE);



    PutAvailableMember(p_ReplicGroup, p_Member);
}
