
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_9__ {scalar_t__ p_MemberAd; } ;
typedef TYPE_1__ t_FmPcdFrmReplicMember ;
struct TYPE_10__ {TYPE_3__* h_FmPcd; } ;
typedef TYPE_2__ t_FmPcdFrmReplicGroup ;
struct TYPE_11__ {int physicalMuramBase; } ;
typedef TYPE_3__ t_FmPcd ;
struct TYPE_12__ {int res; } ;
typedef TYPE_4__ t_AdOfTypeResult ;


 int NEXT_FRM_REPLIC_ADDR_SHIFT ;
 int NEXT_FRM_REPLIC_MEMBER_INDEX_SHIFT ;
 int WRITE_UINT32 (int ,int) ;
 int XX_VirtToPhys (TYPE_4__*) ;

__attribute__((used)) static void LinkMemberToMember(t_FmPcdFrmReplicGroup *p_ReplicGroup,
                               t_FmPcdFrmReplicMember *p_CurrentMember,
                               t_FmPcdFrmReplicMember *p_NextMember)
{
    t_AdOfTypeResult *p_CurrReplicAd = (t_AdOfTypeResult*)p_CurrentMember->p_MemberAd;
    t_AdOfTypeResult *p_NextReplicAd = ((void*)0);
    t_FmPcd *p_FmPcd;
    uint32_t offset = 0;


    if (p_NextMember)
    {
        p_NextReplicAd = (t_AdOfTypeResult*)p_NextMember->p_MemberAd;
        p_FmPcd = p_ReplicGroup->h_FmPcd;
        offset = (XX_VirtToPhys(p_NextReplicAd) - (p_FmPcd->physicalMuramBase));
        offset = ((offset>>NEXT_FRM_REPLIC_ADDR_SHIFT)<< NEXT_FRM_REPLIC_MEMBER_INDEX_SHIFT);
    }


    WRITE_UINT32(p_CurrReplicAd->res, offset);
}
