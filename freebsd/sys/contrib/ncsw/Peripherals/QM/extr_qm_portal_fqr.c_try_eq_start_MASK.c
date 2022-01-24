#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct TYPE_3__ {int /*<<< orphan*/  p_LowQmPortal; } ;
typedef  TYPE_1__ t_QmPortal ;
struct qm_eqcr_entry {int dummy; } ;

/* Variables and functions */
 scalar_t__ EQCR_THRESH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct qm_eqcr_entry* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct qm_eqcr_entry *FUNC4(t_QmPortal *p_QmPortal)
{
    struct qm_eqcr_entry    *p_Eq;
    uint8_t                 avail;

    avail = FUNC2(p_QmPortal->p_LowQmPortal);
    if (avail == EQCR_THRESH)
        FUNC0(p_QmPortal->p_LowQmPortal);
    else if (avail < EQCR_THRESH)
            FUNC1(p_QmPortal->p_LowQmPortal);
    p_Eq = FUNC3(p_QmPortal->p_LowQmPortal);

    return p_Eq;
}