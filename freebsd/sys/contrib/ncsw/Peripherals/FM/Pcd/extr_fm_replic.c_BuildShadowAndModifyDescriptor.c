
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_21__ {TYPE_2__* p_MemberAd; } ;
typedef TYPE_1__ t_FmPcdFrmReplicMember ;
struct TYPE_22__ {int shadowLock; struct TYPE_22__* p_CcShadow; struct TYPE_22__* p_SourceTd; int h_ShadowSpinlock; struct TYPE_22__* h_FmPcd; } ;
typedef TYPE_2__ t_FmPcdFrmReplicGroup ;
typedef TYPE_2__ t_FmPcd ;
typedef scalar_t__ t_Error ;


 int ASSERT_COND (TYPE_2__*) ;
 int BuildSourceTd (TYPE_2__*) ;
 scalar_t__ ERROR_CODE (int ) ;
 int E_BUSY ;
 scalar_t__ E_OK ;
 int FM_PCD_CC_AD_ENTRY_SIZE ;
 int FillReplicAdOfTypeResult (TYPE_2__*,int) ;
 int IO2IOCpy32 (TYPE_2__*,TYPE_2__*,int ) ;
 int LinkMemberToMember (TYPE_2__*,TYPE_1__*,TYPE_1__*) ;
 int LinkSourceToMember (TYPE_2__*,TYPE_2__*,TYPE_1__*) ;
 int MAJOR ;
 scalar_t__ ModifyDescriptor (TYPE_2__*,TYPE_2__*,TYPE_2__*) ;
 int RELEASE_LOCK (int ) ;
 int RETURN_ERROR (int ,scalar_t__,char*) ;
 int TRY_LOCK (int ,int *) ;

__attribute__((used)) static t_Error BuildShadowAndModifyDescriptor(t_FmPcdFrmReplicGroup *p_ReplicGroup,
                                              t_FmPcdFrmReplicMember *p_NextMember,
                                              t_FmPcdFrmReplicMember *p_CurrentMember,
                                              bool sourceDescriptor,
                                              bool last)
{
    t_FmPcd *p_FmPcd;
    t_FmPcdFrmReplicMember shadowMember;
    t_Error err;

    ASSERT_COND(p_ReplicGroup);
    ASSERT_COND(p_ReplicGroup->h_FmPcd);

    p_FmPcd = p_ReplicGroup->h_FmPcd;
    ASSERT_COND(p_FmPcd->p_CcShadow);

    if (!TRY_LOCK(p_FmPcd->h_ShadowSpinlock, &p_FmPcd->shadowLock))
        return ERROR_CODE(E_BUSY);

    if (sourceDescriptor)
    {
        BuildSourceTd(p_FmPcd->p_CcShadow);
        LinkSourceToMember(p_ReplicGroup, p_FmPcd->p_CcShadow, p_NextMember);


        err = ModifyDescriptor(p_ReplicGroup,
                               p_ReplicGroup->p_SourceTd,
                               p_FmPcd->p_CcShadow );

        RELEASE_LOCK(p_FmPcd->shadowLock);
        if (err)
            RETURN_ERROR(MAJOR, err, ("Modify source Descriptor in BuildShadowAndModifyDescriptor"));

    }
    else
    {
        IO2IOCpy32(p_FmPcd->p_CcShadow,
                   p_CurrentMember->p_MemberAd,
                   FM_PCD_CC_AD_ENTRY_SIZE);


        FillReplicAdOfTypeResult(p_FmPcd->p_CcShadow, last);

        shadowMember.p_MemberAd = p_FmPcd->p_CcShadow;


        LinkMemberToMember(p_ReplicGroup, &shadowMember, p_NextMember);


        err = ModifyDescriptor(p_ReplicGroup,
                               p_CurrentMember->p_MemberAd,
                               p_FmPcd->p_CcShadow);

        RELEASE_LOCK(p_FmPcd->shadowLock);
        if (err)
            RETURN_ERROR(MAJOR, err, ("Modify Descriptor in BuildShadowAndModifyDescriptor"));
    }


    return E_OK;
}
