#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
typedef  TYPE_1__* t_Handle ;
struct TYPE_19__ {int numOfEntries; int maxNumOfEntries; scalar_t__ p_Lock; struct TYPE_19__* h_FmPcd; int /*<<< orphan*/ * p_MemberAd; int /*<<< orphan*/ * h_Manip; int /*<<< orphan*/ * p_SourceTd; } ;
typedef  TYPE_1__ t_FmPcdFrmReplicMember ;
typedef  TYPE_1__ t_FmPcdFrmReplicGroup ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC6 (TYPE_1__*) ; 
 TYPE_1__* FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC10(t_FmPcdFrmReplicGroup *p_ReplicGroup)
{
    int                     i, j;
    t_Handle                h_Muram;
    t_FmPcdFrmReplicMember  *p_Member, *p_CurrentMember;

    if (p_ReplicGroup)
    {
        FUNC0(p_ReplicGroup->h_FmPcd);
        h_Muram = FUNC2(p_ReplicGroup->h_FmPcd);
        FUNC0(h_Muram);

        /* free the source table descriptor */
        if (p_ReplicGroup->p_SourceTd)
        {
            FUNC1(h_Muram, p_ReplicGroup->p_SourceTd);
            p_ReplicGroup->p_SourceTd = NULL;
        }

        /* Remove all members from the members linked list (hw and sw) and
           return the members to the available members list */
        if (p_ReplicGroup->numOfEntries)
        {
            j = p_ReplicGroup->numOfEntries-1;

            /* manually removal of the member because there are no owners of
               this group */
            for (i=j; i>=0; i--)
            {
                p_CurrentMember = FUNC7(p_ReplicGroup, (uint16_t)i/*memberIndex*/);
                FUNC0(p_CurrentMember);

                if (p_CurrentMember->h_Manip)
                {
                    FUNC3(p_CurrentMember->h_Manip, FALSE);
                    p_CurrentMember->h_Manip = NULL;
                }

                /* remove the member from the internal driver members list */
                FUNC8(p_ReplicGroup, p_CurrentMember);

                /* return the member to the available members list */
                FUNC5(p_ReplicGroup, p_CurrentMember);
            }
        }

        /* Free members AD */
        for (i=0; i<p_ReplicGroup->maxNumOfEntries; i++)
        {
            p_Member = FUNC6(p_ReplicGroup);
            FUNC0(p_Member);
            if (p_Member->p_MemberAd)
            {
                FUNC1(h_Muram, p_Member->p_MemberAd);
                p_Member->p_MemberAd = NULL;
            }
            FUNC9(p_Member);
        }

        /* release the group lock */
        if (p_ReplicGroup->p_Lock)
            FUNC4(p_ReplicGroup->h_FmPcd, p_ReplicGroup->p_Lock);

        /* free the replicator group */
        FUNC9(p_ReplicGroup);
    }
}