
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_17__ {int * h_Manip; } ;
typedef TYPE_1__ t_FmPcdFrmReplicMember ;
struct TYPE_18__ {TYPE_1__* h_FmPcd; } ;
typedef TYPE_2__ t_FmPcdFrmReplicGroup ;
typedef TYPE_1__ t_FmPcd ;
typedef scalar_t__ t_Error ;


 int ASSERT_COND (TYPE_1__*) ;
 scalar_t__ BuildShadowAndModifyDescriptor (TYPE_2__*,TYPE_1__*,TYPE_1__*,int ,int ) ;
 scalar_t__ E_INVALID_SELECTION ;
 scalar_t__ E_OK ;
 int FALSE ;



 int FmPcdManipUpdateOwner (int *,int ) ;
 int FreeMember (TYPE_2__*,TYPE_1__*) ;
 TYPE_1__* GetMemberByIndex (TYPE_2__*,int ) ;
 int GetMemberPosition (TYPE_2__*,int ,int ) ;
 int MAJOR ;
 char* NO_MSG ;
 int RETURN_ERROR (int ,scalar_t__,char*) ;
 int RemoveMemberFromList (TYPE_2__*,TYPE_1__*) ;
 int TRUE ;
 int UNUSED (TYPE_1__*) ;

__attribute__((used)) static t_Error RemoveMember(t_FmPcdFrmReplicGroup *p_ReplicGroup,
                            uint16_t memberIndex)
{
    t_FmPcd *p_FmPcd = ((void*)0);
    t_FmPcdFrmReplicMember *p_CurrentMember = ((void*)0), *p_PreviousMember = ((void*)0), *p_NextMember = ((void*)0);
    t_Error err;
    uint8_t memberPosition;

    p_FmPcd = p_ReplicGroup->h_FmPcd;
    ASSERT_COND(p_FmPcd);
    UNUSED(p_FmPcd);

    p_CurrentMember = GetMemberByIndex(p_ReplicGroup, memberIndex);
    ASSERT_COND(p_CurrentMember);


    memberPosition = GetMemberPosition(p_ReplicGroup,
                                       memberIndex,
                                       FALSE );

    switch (memberPosition)
    {
        case 130:
            p_NextMember = GetMemberByIndex(p_ReplicGroup, (uint16_t)(memberIndex+1));
            ASSERT_COND(p_NextMember);


            err = BuildShadowAndModifyDescriptor(p_ReplicGroup,
                                                 p_NextMember,
                                                 ((void*)0),
                                                 TRUE ,
                                                 FALSE );
            break;

        case 128:
            p_PreviousMember = GetMemberByIndex(p_ReplicGroup, (uint16_t)(memberIndex-1));
            ASSERT_COND(p_PreviousMember);

            p_NextMember = GetMemberByIndex(p_ReplicGroup, (uint16_t)(memberIndex+1));
            ASSERT_COND(p_NextMember);

            err = BuildShadowAndModifyDescriptor(p_ReplicGroup,
                                                 p_NextMember,
                                                 p_PreviousMember,
                                                 FALSE ,
                                                 FALSE );

            break;

        case 129:
            p_PreviousMember = GetMemberByIndex(p_ReplicGroup, (uint16_t)(memberIndex-1));
            ASSERT_COND(p_PreviousMember);

            err = BuildShadowAndModifyDescriptor(p_ReplicGroup,
                                                 ((void*)0),
                                                 p_PreviousMember,
                                                 FALSE ,
                                                 TRUE );
            break;

        default:
            RETURN_ERROR(MAJOR, E_INVALID_SELECTION, ("member position in remove member"));
    }

    if (err)
        RETURN_ERROR(MAJOR, err, NO_MSG);

    if (p_CurrentMember->h_Manip)
    {
        FmPcdManipUpdateOwner(p_CurrentMember->h_Manip, FALSE);
        p_CurrentMember->h_Manip = ((void*)0);
    }


    RemoveMemberFromList(p_ReplicGroup, p_CurrentMember);


    FreeMember(p_ReplicGroup, p_CurrentMember);

    return E_OK;
}
