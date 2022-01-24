#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct qm_dqrr {scalar_t__ ci; int /*<<< orphan*/  cursor; } ;
struct qm_portal {struct qm_dqrr dqrr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_INVALID_STATE ; 
 int /*<<< orphan*/  QM_BIND_DQRR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC2 (struct qm_portal*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline__ void FUNC3(struct qm_portal *portal)
{
    register struct qm_dqrr *dqrr = &portal->dqrr;
    if (dqrr->ci != FUNC0(dqrr->cursor))
        FUNC1(WARNING, E_INVALID_STATE, ("Ignoring completed DQRR entries"));
    FUNC2(portal, QM_BIND_DQRR);
}