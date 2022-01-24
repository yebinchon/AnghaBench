#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_5__ {int /*<<< orphan*/  p_LowQmPortal; } ;
typedef  TYPE_1__ t_QmPortal ;
typedef  int /*<<< orphan*/  t_Error ;
struct qman_fq {scalar_t__ state; int flags; int fqid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  FUNC1 (struct qman_fq*) ; 
 int /*<<< orphan*/  FUNC2 (struct qman_fq*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int QMAN_FQ_STATE_VDQCR ; 
 int QM_VDQCR_FQID_MASK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ qman_fq_state_parked ; 
 scalar_t__ qman_fq_state_retired ; 

__attribute__((used)) static t_Error FUNC6(t_QmPortal     *p_QmPortal,
                                     struct qman_fq *p_Fq,
                                     uint32_t       vdqcr)
{
    FUNC0((p_Fq->state == qman_fq_state_parked) ||
                (p_Fq->state == qman_fq_state_retired));
    FUNC0(!(vdqcr & QM_VDQCR_FQID_MASK));
    FUNC0(!(p_Fq->flags & QMAN_FQ_STATE_VDQCR));

    vdqcr = (vdqcr & ~QM_VDQCR_FQID_MASK) | p_Fq->fqid;
    FUNC3(p_QmPortal);
    FUNC1(p_Fq);
    p_Fq->flags |= QMAN_FQ_STATE_VDQCR;
    FUNC5(p_QmPortal->p_LowQmPortal, vdqcr);
    FUNC2(p_Fq);
    FUNC4(p_QmPortal);

    return E_OK;
}