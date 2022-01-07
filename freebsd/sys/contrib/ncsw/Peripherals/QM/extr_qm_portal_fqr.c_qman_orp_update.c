
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_6__ {int p_LowQmPortal; } ;
typedef TYPE_1__ t_QmPortal ;
typedef int t_Error ;
struct qm_eqcr_entry {int orp; int seqnum; } ;


 int ERROR_CODE (int ) ;
 int E_BUSY ;
 int E_OK ;
 int NCSW_PLOCK (TYPE_1__*) ;
 int PUNLOCK (TYPE_1__*) ;
 int QMAN_ENQUEUE_FLAG_NESN ;
 int QM_EQCR_SEQNUM_NESN ;
 scalar_t__ QM_EQCR_VERB_ORP ;
 int qmPortalEqcrPvbCommit (int ,int ) ;
 struct qm_eqcr_entry* try_eq_start (TYPE_1__*) ;

__attribute__((used)) static t_Error qman_orp_update(t_QmPortal *p_QmPortal,
                               uint32_t orpId,
                               uint16_t orpSeqnum,
                               uint32_t flags)
{
    struct qm_eqcr_entry *p_Eq;

    NCSW_PLOCK(p_QmPortal);
    p_Eq = try_eq_start(p_QmPortal);
    if (!p_Eq)
    {
        PUNLOCK(p_QmPortal);
        return ERROR_CODE(E_BUSY);
    }

    if (flags & QMAN_ENQUEUE_FLAG_NESN)
        orpSeqnum |= QM_EQCR_SEQNUM_NESN;
    else

        orpSeqnum &= ~QM_EQCR_SEQNUM_NESN;
    p_Eq->seqnum = orpSeqnum;
    p_Eq->orp = orpId;
qmPortalEqcrPvbCommit(p_QmPortal->p_LowQmPortal, (uint8_t)QM_EQCR_VERB_ORP);

    PUNLOCK(p_QmPortal);
    return E_OK;
}
