#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_6__ {int /*<<< orphan*/  p_LowQmPortal; } ;
typedef  TYPE_1__ t_QmPortal ;
typedef  int /*<<< orphan*/  t_Error ;
struct qm_eqcr_entry {int orp; int /*<<< orphan*/  seqnum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_BUSY ; 
 int /*<<< orphan*/  E_OK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int QMAN_ENQUEUE_FLAG_NESN ; 
 int /*<<< orphan*/  QM_EQCR_SEQNUM_NESN ; 
 scalar_t__ QM_EQCR_VERB_ORP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct qm_eqcr_entry* FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static t_Error FUNC5(t_QmPortal   *p_QmPortal,
                               uint32_t     orpId,
                               uint16_t     orpSeqnum,
                               uint32_t     flags)
{
    struct qm_eqcr_entry *p_Eq;

    FUNC1(p_QmPortal);
    p_Eq = FUNC4(p_QmPortal);
    if (!p_Eq)
    {
        FUNC2(p_QmPortal);
        return FUNC0(E_BUSY);
    }

    if (flags & QMAN_ENQUEUE_FLAG_NESN)
        orpSeqnum |= QM_EQCR_SEQNUM_NESN;
    else
        /* No need to check 4 QMAN_ENQUEUE_FLAG_HOLE */
        orpSeqnum &= ~QM_EQCR_SEQNUM_NESN;
    p_Eq->seqnum  = orpSeqnum;
    p_Eq->orp     = orpId;
FUNC3(p_QmPortal->p_LowQmPortal, (uint8_t)QM_EQCR_VERB_ORP);

    FUNC2(p_QmPortal);
    return E_OK;
}