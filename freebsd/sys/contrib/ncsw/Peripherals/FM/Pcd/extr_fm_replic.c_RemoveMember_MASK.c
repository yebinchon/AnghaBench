#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_17__ {int /*<<< orphan*/ * h_Manip; } ;
typedef  TYPE_1__ t_FmPcdFrmReplicMember ;
struct TYPE_18__ {TYPE_1__* h_FmPcd; } ;
typedef  TYPE_2__ t_FmPcdFrmReplicGroup ;
typedef  TYPE_1__ t_FmPcd ;
typedef  scalar_t__ t_Error ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ E_INVALID_SELECTION ; 
 scalar_t__ E_OK ; 
 int /*<<< orphan*/  FALSE ; 
#define  FRM_REPLIC_FIRST_MEMBER_INDEX 130 
#define  FRM_REPLIC_LAST_MEMBER_INDEX 129 
#define  FRM_REPLIC_MIDDLE_MEMBER_INDEX 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*) ; 
 TYPE_1__* FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAJOR ; 
 char* NO_MSG ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static t_Error FUNC9(t_FmPcdFrmReplicGroup   *p_ReplicGroup,
                            uint16_t                memberIndex)
{
    t_FmPcd                 *p_FmPcd = NULL;
    t_FmPcdFrmReplicMember  *p_CurrentMember = NULL, *p_PreviousMember = NULL, *p_NextMember = NULL;
    t_Error                 err;
    uint8_t                 memberPosition;

    p_FmPcd         = p_ReplicGroup->h_FmPcd;
    FUNC0(p_FmPcd);
    FUNC8(p_FmPcd);

    p_CurrentMember = FUNC4(p_ReplicGroup, memberIndex);
    FUNC0(p_CurrentMember);

    /* determine the member position in the group */
    memberPosition = FUNC5(p_ReplicGroup,
                                       memberIndex,
                                       FALSE/*remove operation*/);

    switch (memberPosition)
    {
        case FRM_REPLIC_FIRST_MEMBER_INDEX:
            p_NextMember = FUNC4(p_ReplicGroup, (uint16_t)(memberIndex+1));
            FUNC0(p_NextMember);

            /* update the source td itself by using a host command */
            err = FUNC1(p_ReplicGroup,
                                                 p_NextMember,
                                                 NULL,
                                                 TRUE/*sourceDescriptor*/,
                                                 FALSE/*last*/);
            break;

        case FRM_REPLIC_MIDDLE_MEMBER_INDEX:
            p_PreviousMember = FUNC4(p_ReplicGroup, (uint16_t)(memberIndex-1));
            FUNC0(p_PreviousMember);

            p_NextMember = FUNC4(p_ReplicGroup, (uint16_t)(memberIndex+1));
            FUNC0(p_NextMember);

            err = FUNC1(p_ReplicGroup,
                                                 p_NextMember,
                                                 p_PreviousMember,
                                                 FALSE/*sourceDescriptor*/,
                                                 FALSE/*last*/);

            break;

        case FRM_REPLIC_LAST_MEMBER_INDEX:
            p_PreviousMember = FUNC4(p_ReplicGroup, (uint16_t)(memberIndex-1));
            FUNC0(p_PreviousMember);

            err = FUNC1(p_ReplicGroup,
                                                 NULL,
                                                 p_PreviousMember,
                                                 FALSE/*sourceDescriptor*/,
                                                 TRUE/*last*/);
            break;

        default:
            FUNC6(MAJOR, E_INVALID_SELECTION, ("member position in remove member"));
    }

    if (err)
        FUNC6(MAJOR, err, NO_MSG);

    if (p_CurrentMember->h_Manip)
    {
        FUNC2(p_CurrentMember->h_Manip, FALSE);
        p_CurrentMember->h_Manip = NULL;
    }

    /* remove the member from the driver internal members list */
    FUNC7(p_ReplicGroup, p_CurrentMember);

    /* return the member to the available members list */
    FUNC3(p_ReplicGroup, p_CurrentMember);

    return E_OK;
}