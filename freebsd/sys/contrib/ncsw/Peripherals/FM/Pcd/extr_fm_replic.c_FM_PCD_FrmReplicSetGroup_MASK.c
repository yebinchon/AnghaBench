#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* t_Handle ;
typedef  int /*<<< orphan*/  t_FmPcdFrmReplicMember ;
struct TYPE_26__ {int maxNumOfEntries; int numOfEntries; struct TYPE_26__* p_SourceTd; int /*<<< orphan*/  membersList; int /*<<< orphan*/ * nextEngineParams; struct TYPE_26__* h_FmPcd; int /*<<< orphan*/  p_Lock; int /*<<< orphan*/  availableMembersList; } ;
typedef  TYPE_1__ t_FmPcdFrmReplicGroupParams ;
typedef  TYPE_1__ t_FmPcdFrmReplicGroup ;
typedef  scalar_t__ t_Error ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ E_INVALID_HANDLE ; 
 scalar_t__ E_INVALID_STATE ; 
 scalar_t__ E_NO_MEMORY ; 
 int FALSE ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FM_PCD_CC_AD_ENTRY_SIZE ; 
 int /*<<< orphan*/  FM_PCD_CC_AD_TABLE_ALIGN ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 TYPE_1__* FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 scalar_t__ FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAJOR ; 
 char* NO_MSG ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int TRUE ; 
 scalar_t__ FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

t_Handle FUNC19(t_Handle                    h_FmPcd,
                                  t_FmPcdFrmReplicGroupParams *p_ReplicGroupParam)
{
    t_FmPcdFrmReplicGroup       *p_ReplicGroup;
    t_FmPcdFrmReplicMember      *p_CurrentMember, *p_NextMember = NULL;
    int                         i;
    t_Error                     err;
    bool                        last = FALSE;
    t_Handle                    h_Muram;

    FUNC16(h_FmPcd, E_INVALID_HANDLE, NULL);
    FUNC16(p_ReplicGroupParam, E_INVALID_HANDLE, NULL);

    if (!FUNC9(h_FmPcd))
    {
        FUNC15(MAJOR, E_INVALID_STATE, ("Advanced-offload must be enabled"));
        return NULL;
    }

    err = FUNC4(h_FmPcd, p_ReplicGroupParam);
    if (err)
    {
        FUNC15(MAJOR, err, (NO_MSG));
        return NULL;
    }

    p_ReplicGroup = (t_FmPcdFrmReplicGroup*)FUNC17(sizeof(t_FmPcdFrmReplicGroup));
    if (!p_ReplicGroup)
    {
        FUNC15(MAJOR, E_NO_MEMORY, ("No memory"));
        return NULL;
    }
    FUNC18(p_ReplicGroup, 0, sizeof(t_FmPcdFrmReplicGroup));

    /* initialize lists for internal driver use */
    FUNC11(&p_ReplicGroup->availableMembersList);
    FUNC11(&p_ReplicGroup->membersList);

    p_ReplicGroup->h_FmPcd = h_FmPcd;

    h_Muram = FUNC8(p_ReplicGroup->h_FmPcd);
    FUNC0(h_Muram);

    /* initialize the group lock */
    p_ReplicGroup->p_Lock = FUNC7(p_ReplicGroup->h_FmPcd);
    if (!p_ReplicGroup->p_Lock)
    {
        FUNC15(MAJOR, E_NO_MEMORY, ("Replic group lock"));
        FUNC5(p_ReplicGroup);
        return NULL;
    }

    /* Allocate the frame replicator source table descriptor */
    p_ReplicGroup->p_SourceTd =
        (t_Handle)FUNC6(h_Muram,
                                    FM_PCD_CC_AD_ENTRY_SIZE,
                                    FM_PCD_CC_AD_TABLE_ALIGN);
    if (!p_ReplicGroup->p_SourceTd)
    {
        FUNC15(MAJOR, E_NO_MEMORY, ("frame replicator source table descriptor"));
        FUNC5(p_ReplicGroup);
        return NULL;
    }

    /* update the shadow size - required for the host commands */
    err = FUNC10(p_ReplicGroup->h_FmPcd,
                              FM_PCD_CC_AD_ENTRY_SIZE,
                              FM_PCD_CC_AD_TABLE_ALIGN);
    if (err)
    {
        FUNC15(MAJOR, err, ("Update CC shadow"));
        FUNC5(p_ReplicGroup);
        return NULL;
    }

    p_ReplicGroup->maxNumOfEntries  = p_ReplicGroupParam->maxNumOfEntries;

    /* Allocate the maximal number of members ADs and Statistics AD for the group
       It prevents allocation of Muram in run-time */
    for (i=0; i<p_ReplicGroup->maxNumOfEntries; i++)
    {
        err = FUNC2(p_ReplicGroup);
        if (err)
        {
            FUNC15(MAJOR, err, ("allocate a new member"));
            FUNC5(p_ReplicGroup);
            return NULL;
        }
    }

    /* Initialize the members linked lists:
      (hw - the one that is used by the FMan controller and
       sw - the one that is managed by the driver internally) */
    for (i=(p_ReplicGroupParam->numOfEntries-1); i>=0; i--)
    {
        /* check if this is the last member in the group */
        if (i == (p_ReplicGroupParam->numOfEntries-1))
            last = TRUE;
        else
            last = FALSE;

        /* Initialize a new member */
        p_CurrentMember = FUNC12(p_ReplicGroup,
                                     &(p_ReplicGroupParam->nextEngineParams[i]),
                                     last);
        if (!p_CurrentMember)
        {
            FUNC15(MAJOR, E_INVALID_HANDLE, ("No available member"));
            FUNC5(p_ReplicGroup);
            return NULL;
        }

        /* Build the members group - link two consecutive members in the hw linked list */
        FUNC13(p_ReplicGroup, p_CurrentMember, p_NextMember);

        /* update the driver internal members list to be compatible to the hw members linked list */
        FUNC1(p_ReplicGroup, p_CurrentMember, &p_ReplicGroup->membersList);

        p_NextMember = p_CurrentMember;
    }

    /* initialize the source table descriptor */
    FUNC3(p_ReplicGroup->p_SourceTd);

    /* link the source table descriptor to point to the first member in the group */
    FUNC14(p_ReplicGroup, p_ReplicGroup->p_SourceTd, p_NextMember);

    return p_ReplicGroup;
}