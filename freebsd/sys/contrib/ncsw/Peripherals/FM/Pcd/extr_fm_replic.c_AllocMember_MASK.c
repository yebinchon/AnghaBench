#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  TYPE_1__* t_Handle ;
struct TYPE_11__ {int /*<<< orphan*/  node; int /*<<< orphan*/ * p_MemberAd; } ;
typedef  TYPE_2__ t_FmPcdFrmReplicMember ;
struct TYPE_10__ {int /*<<< orphan*/  availableMembersList; int /*<<< orphan*/  h_FmPcd; } ;
typedef  TYPE_1__ t_FmPcdFrmReplicGroup ;
typedef  int /*<<< orphan*/  t_Error ;
typedef  int /*<<< orphan*/  t_AdOfTypeResult ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  E_NO_MEMORY ; 
 int /*<<< orphan*/  E_OK ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FM_PCD_CC_AD_ENTRY_SIZE ; 
 int /*<<< orphan*/  FM_PCD_CC_AD_TABLE_ALIGN ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAJOR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static t_Error FUNC9(t_FmPcdFrmReplicGroup *p_ReplicGroup)
{
    t_FmPcdFrmReplicMember  *p_CurrentMember;
    t_Handle                h_Muram;

    FUNC0(p_ReplicGroup);

    h_Muram = FUNC2(p_ReplicGroup->h_FmPcd);
    FUNC0(h_Muram);

    /* Initialize an internal structure of a member to add to the available members list */
    p_CurrentMember = (t_FmPcdFrmReplicMember *)FUNC7(sizeof(t_FmPcdFrmReplicMember));
    if (!p_CurrentMember)
        FUNC5(MAJOR, E_NO_MEMORY, ("Frame replicator member"));

    FUNC8(p_CurrentMember, 0 ,sizeof(t_FmPcdFrmReplicMember));

    /* Allocate the member AD */
    p_CurrentMember->p_MemberAd =
        (t_AdOfTypeResult*)FUNC1(h_Muram,
                                             FM_PCD_CC_AD_ENTRY_SIZE,
                                             FM_PCD_CC_AD_TABLE_ALIGN);
    if (!p_CurrentMember->p_MemberAd)
    {
        FUNC6(p_CurrentMember);
        FUNC5(MAJOR, E_NO_MEMORY, ("member AD table"));
    }
    FUNC3((uint8_t*)p_CurrentMember->p_MemberAd, 0, FM_PCD_CC_AD_ENTRY_SIZE);

    /* Add the new member to the available members list */
    FUNC4(&p_CurrentMember->node, &(p_ReplicGroup->availableMembersList));

    return E_OK;
}