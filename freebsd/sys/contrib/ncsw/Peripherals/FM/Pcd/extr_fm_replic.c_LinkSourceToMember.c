
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_9__ {scalar_t__ physicalMuramBase; int p_MemberAd; int matchTblPtr; struct TYPE_9__* h_FmPcd; } ;
typedef TYPE_1__ t_FmPcdFrmReplicMember ;
typedef TYPE_1__ t_FmPcdFrmReplicGroup ;
typedef TYPE_1__ t_FmPcd ;
typedef TYPE_1__ t_AdOfTypeContLookup ;


 int ASSERT_COND (TYPE_1__*) ;
 int WRITE_UINT32 (int ,int ) ;
 scalar_t__ XX_VirtToPhys (int ) ;

__attribute__((used)) static void LinkSourceToMember(t_FmPcdFrmReplicGroup *p_ReplicGroup,
                               t_AdOfTypeContLookup *p_SourceTd,
                               t_FmPcdFrmReplicMember *p_ReplicMember)
{
    t_FmPcd *p_FmPcd;

    ASSERT_COND(p_SourceTd);
    ASSERT_COND(p_ReplicMember);
    ASSERT_COND(p_ReplicGroup);
    ASSERT_COND(p_ReplicGroup->h_FmPcd);


    p_FmPcd = p_ReplicGroup->h_FmPcd;

    WRITE_UINT32(p_SourceTd->matchTblPtr,
        (uint32_t)(XX_VirtToPhys(p_ReplicMember->p_MemberAd) -
                        p_FmPcd->physicalMuramBase));
}
