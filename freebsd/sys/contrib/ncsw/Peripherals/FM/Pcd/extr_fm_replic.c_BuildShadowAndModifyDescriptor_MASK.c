#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {TYPE_2__* p_MemberAd; } ;
typedef  TYPE_1__ t_FmPcdFrmReplicMember ;
struct TYPE_22__ {int /*<<< orphan*/  shadowLock; struct TYPE_22__* p_CcShadow; struct TYPE_22__* p_SourceTd; int /*<<< orphan*/  h_ShadowSpinlock; struct TYPE_22__* h_FmPcd; } ;
typedef  TYPE_2__ t_FmPcdFrmReplicGroup ;
typedef  TYPE_2__ t_FmPcd ;
typedef  scalar_t__ t_Error ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_BUSY ; 
 scalar_t__ E_OK ; 
 int /*<<< orphan*/  FM_PCD_CC_AD_ENTRY_SIZE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  MAJOR ; 
 scalar_t__ FUNC7 (TYPE_2__*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static t_Error FUNC11(t_FmPcdFrmReplicGroup   *p_ReplicGroup,
                                              t_FmPcdFrmReplicMember  *p_NextMember,
                                              t_FmPcdFrmReplicMember  *p_CurrentMember,
                                              bool                    sourceDescriptor,
                                              bool                    last)
{
    t_FmPcd                 *p_FmPcd;
    t_FmPcdFrmReplicMember  shadowMember;
    t_Error                 err;

    FUNC0(p_ReplicGroup);
    FUNC0(p_ReplicGroup->h_FmPcd);

    p_FmPcd = p_ReplicGroup->h_FmPcd;
    FUNC0(p_FmPcd->p_CcShadow);

    if (!FUNC10(p_FmPcd->h_ShadowSpinlock, &p_FmPcd->shadowLock))
        return FUNC2(E_BUSY);

    if (sourceDescriptor)
    {
        FUNC1(p_FmPcd->p_CcShadow);
        FUNC6(p_ReplicGroup, p_FmPcd->p_CcShadow, p_NextMember);

        /* Modify the source table descriptor according to the prepared shadow descriptor */
        err = FUNC7(p_ReplicGroup,
                               p_ReplicGroup->p_SourceTd,
                               p_FmPcd->p_CcShadow/* new prepared source td */);

        FUNC8(p_FmPcd->shadowLock);
        if (err)
            FUNC9(MAJOR, err, ("Modify source Descriptor in BuildShadowAndModifyDescriptor"));

    }
    else
    {
        FUNC4(p_FmPcd->p_CcShadow,
                   p_CurrentMember->p_MemberAd,
                   FM_PCD_CC_AD_ENTRY_SIZE);

        /* update the last bit in the shadow ad */
        FUNC3(p_FmPcd->p_CcShadow, last);

        shadowMember.p_MemberAd = p_FmPcd->p_CcShadow;

        /* update the next FR member index */
        FUNC5(p_ReplicGroup, &shadowMember, p_NextMember);

        /* Modify the next member according to the prepared shadow descriptor */
        err = FUNC7(p_ReplicGroup,
                               p_CurrentMember->p_MemberAd,
                               p_FmPcd->p_CcShadow);

        FUNC8(p_FmPcd->shadowLock);
        if (err)
            FUNC9(MAJOR, err, ("Modify Descriptor in BuildShadowAndModifyDescriptor"));
    }


    return E_OK;
}