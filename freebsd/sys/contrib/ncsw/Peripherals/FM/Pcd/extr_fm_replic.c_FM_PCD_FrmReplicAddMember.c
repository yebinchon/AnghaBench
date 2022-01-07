
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_23__ {int node; int p_MemberAd; } ;
typedef TYPE_1__ t_FmPcdFrmReplicMember ;
struct TYPE_24__ {scalar_t__ numOfEntries; scalar_t__ maxNumOfEntries; int membersList; int p_SourceTd; int h_FmPcd; } ;
typedef TYPE_2__ t_FmPcdFrmReplicGroup ;
typedef TYPE_2__ t_FmPcdCcNextEngineParams ;
typedef scalar_t__ t_Error ;


 int ASSERT_COND (TYPE_1__*) ;
 int AddMemberToList (TYPE_2__*,TYPE_1__*,int *) ;
 scalar_t__ ERROR_CODE (scalar_t__) ;
 scalar_t__ E_BUSY ;
 scalar_t__ E_INVALID_HANDLE ;
 scalar_t__ E_INVALID_SELECTION ;
 scalar_t__ E_INVALID_VALUE ;
 scalar_t__ E_OK ;
 int FALSE ;
 scalar_t__ FM_PCD_FRM_REPLIC_MAX_NUM_OF_ENTRIES ;



 int FillReplicAdOfTypeResult (int ,int ) ;
 scalar_t__ FrmReplicGroupTryLock (TYPE_2__*) ;
 int FrmReplicGroupUnlock (TYPE_2__*) ;
 scalar_t__ GET_ERROR_TYPE (scalar_t__) ;
 TYPE_1__* GetMemberByIndex (TYPE_2__*,scalar_t__) ;
 int GetMemberPosition (TYPE_2__*,scalar_t__,int ) ;
 TYPE_1__* InitMember (TYPE_2__*,TYPE_2__*,int ) ;
 int LinkMemberToMember (TYPE_2__*,TYPE_1__*,TYPE_1__*) ;
 int LinkSourceToMember (TYPE_2__*,int ,TYPE_1__*) ;
 int MAJOR ;
 scalar_t__ MemberCheckParams (int ,TYPE_2__*) ;
 int RETURN_ERROR (int ,scalar_t__,char*) ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_2__*,scalar_t__) ;
 int TRUE ;

t_Error FM_PCD_FrmReplicAddMember(t_Handle h_ReplicGroup,
                                  uint16_t memberIndex,
                                  t_FmPcdCcNextEngineParams *p_MemberParams)
{
    t_FmPcdFrmReplicGroup *p_ReplicGroup = (t_FmPcdFrmReplicGroup*) h_ReplicGroup;
    t_FmPcdFrmReplicMember *p_NewMember, *p_CurrentMember = ((void*)0), *p_PreviousMember = ((void*)0);
    t_Error err;
    uint8_t memberPosition;

    SANITY_CHECK_RETURN_ERROR(p_ReplicGroup, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(p_MemberParams, E_INVALID_HANDLE);


    err = FrmReplicGroupTryLock(p_ReplicGroup);
    if (GET_ERROR_TYPE(err) == E_BUSY)
        return ERROR_CODE(E_BUSY);

    if (memberIndex > p_ReplicGroup->numOfEntries)
    {

        FrmReplicGroupUnlock(p_ReplicGroup);
        RETURN_ERROR(MAJOR, E_INVALID_SELECTION,
                     ("memberIndex is greater than the members in the list"));
    }

    if (memberIndex >= p_ReplicGroup->maxNumOfEntries)
    {

        FrmReplicGroupUnlock(p_ReplicGroup);
        RETURN_ERROR(MAJOR, E_INVALID_SELECTION, ("memberIndex is greater than the allowed number of members in the group"));
    }

    if ((p_ReplicGroup->numOfEntries + 1) > FM_PCD_FRM_REPLIC_MAX_NUM_OF_ENTRIES)
    {

        FrmReplicGroupUnlock(p_ReplicGroup);
        RETURN_ERROR(MAJOR, E_INVALID_VALUE,
                     ("numOfEntries with new entry can not be larger than %d\n",
                      FM_PCD_FRM_REPLIC_MAX_NUM_OF_ENTRIES));
    }

    err = MemberCheckParams(p_ReplicGroup->h_FmPcd, p_MemberParams);
    if (err)
    {

        FrmReplicGroupUnlock(p_ReplicGroup);
        RETURN_ERROR(MAJOR, err, ("member check parameters in add operation"));
    }

    memberPosition = GetMemberPosition(p_ReplicGroup,
                                       memberIndex,
                                       TRUE );


    p_NewMember = InitMember(p_ReplicGroup,
                             p_MemberParams,
                             (memberPosition == 129 ? TRUE : FALSE));
    if (!p_NewMember)
    {

        FrmReplicGroupUnlock(p_ReplicGroup);
        RETURN_ERROR(MAJOR, E_INVALID_HANDLE, ("No available member"));
    }

    switch (memberPosition)
    {
        case 130:
            p_CurrentMember = GetMemberByIndex(p_ReplicGroup, memberIndex);
            ASSERT_COND(p_CurrentMember);

            LinkMemberToMember(p_ReplicGroup, p_NewMember, p_CurrentMember);


            LinkSourceToMember(p_ReplicGroup,
                               p_ReplicGroup->p_SourceTd,
                               p_NewMember);


            AddMemberToList(p_ReplicGroup,
                            p_NewMember,
                            &p_ReplicGroup->membersList);
            break;

        case 128:
            p_CurrentMember = GetMemberByIndex(p_ReplicGroup, memberIndex);
            ASSERT_COND(p_CurrentMember);

            p_PreviousMember = GetMemberByIndex(p_ReplicGroup, (uint16_t)(memberIndex-1));
            ASSERT_COND(p_PreviousMember);

            LinkMemberToMember(p_ReplicGroup, p_NewMember, p_CurrentMember);
            LinkMemberToMember(p_ReplicGroup, p_PreviousMember, p_NewMember);

            AddMemberToList(p_ReplicGroup, p_NewMember, &p_PreviousMember->node);
            break;

        case 129:
            p_PreviousMember = GetMemberByIndex(p_ReplicGroup, (uint16_t)(memberIndex-1));
            ASSERT_COND(p_PreviousMember);

            LinkMemberToMember(p_ReplicGroup, p_PreviousMember, p_NewMember);
            FillReplicAdOfTypeResult(p_PreviousMember->p_MemberAd, FALSE );


            AddMemberToList(p_ReplicGroup, p_NewMember, &p_PreviousMember->node);
           break;

        default:

            FrmReplicGroupUnlock(p_ReplicGroup);
            RETURN_ERROR(MAJOR, E_INVALID_SELECTION, ("member position in add member"));

    }


    FrmReplicGroupUnlock(p_ReplicGroup);

    return E_OK;
}
