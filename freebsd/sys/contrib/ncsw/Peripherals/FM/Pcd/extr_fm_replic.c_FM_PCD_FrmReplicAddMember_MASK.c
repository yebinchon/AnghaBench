#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  scalar_t__ uint16_t ;
typedef  scalar_t__ t_Handle ;
struct TYPE_23__ {int /*<<< orphan*/  node; int /*<<< orphan*/  p_MemberAd; } ;
typedef  TYPE_1__ t_FmPcdFrmReplicMember ;
struct TYPE_24__ {scalar_t__ numOfEntries; scalar_t__ maxNumOfEntries; int /*<<< orphan*/  membersList; int /*<<< orphan*/  p_SourceTd; int /*<<< orphan*/  h_FmPcd; } ;
typedef  TYPE_2__ t_FmPcdFrmReplicGroup ;
typedef  TYPE_2__ t_FmPcdCcNextEngineParams ;
typedef  scalar_t__ t_Error ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ E_BUSY ; 
 scalar_t__ E_INVALID_HANDLE ; 
 scalar_t__ E_INVALID_SELECTION ; 
 scalar_t__ E_INVALID_VALUE ; 
 scalar_t__ E_OK ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FM_PCD_FRM_REPLIC_MAX_NUM_OF_ENTRIES ; 
#define  FRM_REPLIC_FIRST_MEMBER_INDEX 130 
#define  FRM_REPLIC_LAST_MEMBER_INDEX 129 
#define  FRM_REPLIC_MIDDLE_MEMBER_INDEX 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 TYPE_1__* FUNC7 (TYPE_2__*,scalar_t__) ; 
 int FUNC8 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  MAJOR ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 

t_Error FUNC15(t_Handle                  h_ReplicGroup,
                                  uint16_t                  memberIndex,
                                  t_FmPcdCcNextEngineParams *p_MemberParams)
{
    t_FmPcdFrmReplicGroup       *p_ReplicGroup = (t_FmPcdFrmReplicGroup*) h_ReplicGroup;
    t_FmPcdFrmReplicMember      *p_NewMember, *p_CurrentMember = NULL, *p_PreviousMember = NULL;
    t_Error                     err;
    uint8_t                     memberPosition;

    FUNC14(p_ReplicGroup, E_INVALID_HANDLE);
    FUNC14(p_MemberParams, E_INVALID_HANDLE);

    /* group lock */
    err = FUNC4(p_ReplicGroup);
    if (FUNC6(err) == E_BUSY)
        return FUNC2(E_BUSY);

    if (memberIndex > p_ReplicGroup->numOfEntries)
    {
        /* unlock */
        FUNC5(p_ReplicGroup);
        FUNC13(MAJOR, E_INVALID_SELECTION,
                     ("memberIndex is greater than the members in the list"));
    }

    if (memberIndex >= p_ReplicGroup->maxNumOfEntries)
    {
        /* unlock */
        FUNC5(p_ReplicGroup);
        FUNC13(MAJOR, E_INVALID_SELECTION, ("memberIndex is greater than the allowed number of members in the group"));
    }

    if ((p_ReplicGroup->numOfEntries + 1) > FM_PCD_FRM_REPLIC_MAX_NUM_OF_ENTRIES)
    {
        /* unlock */
        FUNC5(p_ReplicGroup);
        FUNC13(MAJOR, E_INVALID_VALUE,
                     ("numOfEntries with new entry can not be larger than %d\n",
                      FM_PCD_FRM_REPLIC_MAX_NUM_OF_ENTRIES));
    }

    err = FUNC12(p_ReplicGroup->h_FmPcd, p_MemberParams);
    if (err)
    {
        /* unlock */
        FUNC5(p_ReplicGroup);
        FUNC13(MAJOR, err, ("member check parameters in add operation"));
    }
    /* determine the member position in the group */
    memberPosition = FUNC8(p_ReplicGroup,
                                       memberIndex,
                                       TRUE/* add operation */);

    /* Initialize a new member */
    p_NewMember = FUNC9(p_ReplicGroup,
                             p_MemberParams,
                             (memberPosition == FRM_REPLIC_LAST_MEMBER_INDEX ? TRUE : FALSE));
    if (!p_NewMember)
    {
        /* unlock */
        FUNC5(p_ReplicGroup);
        FUNC13(MAJOR, E_INVALID_HANDLE, ("No available member"));
    }

    switch (memberPosition)
    {
        case FRM_REPLIC_FIRST_MEMBER_INDEX:
            p_CurrentMember = FUNC7(p_ReplicGroup, memberIndex);
            FUNC0(p_CurrentMember);

            FUNC10(p_ReplicGroup, p_NewMember, p_CurrentMember);

            /* update the internal group source TD */
            FUNC11(p_ReplicGroup,
                               p_ReplicGroup->p_SourceTd,
                               p_NewMember);

            /* add member to the internal sw member list */
            FUNC1(p_ReplicGroup,
                            p_NewMember,
                            &p_ReplicGroup->membersList);
            break;

        case FRM_REPLIC_MIDDLE_MEMBER_INDEX:
            p_CurrentMember = FUNC7(p_ReplicGroup, memberIndex);
            FUNC0(p_CurrentMember);

            p_PreviousMember = FUNC7(p_ReplicGroup, (uint16_t)(memberIndex-1));
            FUNC0(p_PreviousMember);

            FUNC10(p_ReplicGroup, p_NewMember, p_CurrentMember);
            FUNC10(p_ReplicGroup, p_PreviousMember, p_NewMember);

            FUNC1(p_ReplicGroup, p_NewMember, &p_PreviousMember->node);
            break;

        case FRM_REPLIC_LAST_MEMBER_INDEX:
            p_PreviousMember = FUNC7(p_ReplicGroup, (uint16_t)(memberIndex-1));
            FUNC0(p_PreviousMember);

            FUNC10(p_ReplicGroup, p_PreviousMember, p_NewMember);
            FUNC3(p_PreviousMember->p_MemberAd, FALSE/*last*/);

            /* add the new member to the internal sw member list */
            FUNC1(p_ReplicGroup, p_NewMember, &p_PreviousMember->node);
           break;

        default:
            /* unlock */
            FUNC5(p_ReplicGroup);
            FUNC13(MAJOR, E_INVALID_SELECTION, ("member position in add member"));

    }

    /* unlock */
    FUNC5(p_ReplicGroup);

    return E_OK;
}