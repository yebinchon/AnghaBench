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
struct qm_dqrr {struct qm_dqrr_entry* cursor; int /*<<< orphan*/  fill; } ;
struct qm_portal {struct qm_dqrr dqrr; } ;
struct qm_dqrr_entry {int dummy; } ;

/* Variables and functions */

__attribute__((used)) static __inline__ struct qm_dqrr_entry *FUNC0(struct qm_portal *portal)
{
    register struct qm_dqrr *dqrr = &portal->dqrr;
    if (!dqrr->fill)
        return NULL;
    return dqrr->cursor;
}