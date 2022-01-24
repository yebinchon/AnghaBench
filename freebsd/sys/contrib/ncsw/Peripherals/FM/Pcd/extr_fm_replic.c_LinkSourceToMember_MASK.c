#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_9__ {scalar_t__ physicalMuramBase; int /*<<< orphan*/  p_MemberAd; int /*<<< orphan*/  matchTblPtr; struct TYPE_9__* h_FmPcd; } ;
typedef  TYPE_1__ t_FmPcdFrmReplicMember ;
typedef  TYPE_1__ t_FmPcdFrmReplicGroup ;
typedef  TYPE_1__ t_FmPcd ;
typedef  TYPE_1__ t_AdOfTypeContLookup ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(t_FmPcdFrmReplicGroup    *p_ReplicGroup,
                               t_AdOfTypeContLookup     *p_SourceTd,
                               t_FmPcdFrmReplicMember   *p_ReplicMember)
{
    t_FmPcd             *p_FmPcd;

    FUNC0(p_SourceTd);
    FUNC0(p_ReplicMember);
    FUNC0(p_ReplicGroup);
    FUNC0(p_ReplicGroup->h_FmPcd);

    /* Link the first member in the group to the source TD */
    p_FmPcd = p_ReplicGroup->h_FmPcd;

    FUNC1(p_SourceTd->matchTblPtr,
        (uint32_t)(FUNC2(p_ReplicMember->p_MemberAd) -
                        p_FmPcd->physicalMuramBase));
}