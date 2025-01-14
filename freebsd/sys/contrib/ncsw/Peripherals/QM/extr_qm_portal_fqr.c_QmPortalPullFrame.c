
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int options; int p_LowQmPortal; int pullMode; } ;
typedef TYPE_1__ t_QmPortal ;
typedef scalar_t__ t_Handle ;
typedef int t_Error ;
typedef TYPE_1__ t_DpaaFD ;
struct qman_fq {int dummy; } ;
struct qm_dqrr_entry {int stat; int fd; TYPE_1__* fqid; int contextB; } ;


 int ASSERT_COND (TYPE_1__*) ;
 int ERROR_CODE (int ) ;
 int E_EMPTY ;
 int E_INVALID_STATE ;
 int E_OK ;
 int NCSW_PLOCK (TYPE_1__*) ;
 int PUNLOCK (TYPE_1__*) ;
 int QMAN_PORTAL_FLAG_DCA ;
 int QMAN_PORTAL_FLAG_RSTASH ;
 int QM_DQRR_STAT_FD_VALID ;
 int SANITY_CHECK_RETURN_ERROR (int ,int ) ;
 scalar_t__ TRUE ;
 int mb () ;
 struct qman_fq* ptr_from_aligned_int (int ) ;
 int qmPortalDqrrCciConsume (int ,int) ;
 int qmPortalDqrrDcaConsume1ptr (int ,struct qm_dqrr_entry*,int) ;
 int qmPortalDqrrPvbPrefetch (int ) ;
 int qmPortalDqrrPvbUpdate (int ) ;
 struct qm_dqrr_entry* qm_dqrr_current (int ) ;
 int qm_dqrr_next (int ) ;
 scalar_t__ qm_dqrr_pdqcr_get (int ) ;
 int qm_dqrr_pdqcr_set (int ,int ) ;

__attribute__((used)) static t_Error QmPortalPullFrame(t_Handle h_QmPortal, uint32_t pdqcr, t_DpaaFD *p_Frame)
{
    t_QmPortal *p_QmPortal = (t_QmPortal *)h_QmPortal;
    struct qm_dqrr_entry *p_Dq;
    struct qman_fq *p_Fq;
    int prefetch;
    uint32_t *p_Dst, *p_Src;

    ASSERT_COND(p_QmPortal);
    ASSERT_COND(p_Frame);
    SANITY_CHECK_RETURN_ERROR(p_QmPortal->pullMode, E_INVALID_STATE);

    NCSW_PLOCK(p_QmPortal);

    qm_dqrr_pdqcr_set(p_QmPortal->p_LowQmPortal, pdqcr);
    mb();
    while (qm_dqrr_pdqcr_get(p_QmPortal->p_LowQmPortal)) ;

    prefetch = !(p_QmPortal->options & QMAN_PORTAL_FLAG_RSTASH);
    while(TRUE)
    {
        if (prefetch)
            qmPortalDqrrPvbPrefetch(p_QmPortal->p_LowQmPortal);
        qmPortalDqrrPvbUpdate(p_QmPortal->p_LowQmPortal);
        p_Dq = qm_dqrr_current(p_QmPortal->p_LowQmPortal);
        if (!p_Dq)
            continue;
        p_Fq = ptr_from_aligned_int(p_Dq->contextB);
        ASSERT_COND(p_Dq->fqid);
        p_Dst = (uint32_t *)p_Frame;
        p_Src = (uint32_t *)&p_Dq->fd;
        p_Dst[0] = p_Src[0];
        p_Dst[1] = p_Src[1];
        p_Dst[2] = p_Src[2];
        p_Dst[3] = p_Src[3];
        if (p_QmPortal->options & QMAN_PORTAL_FLAG_DCA)
        {
            qmPortalDqrrDcaConsume1ptr(p_QmPortal->p_LowQmPortal,
                                       p_Dq,
                                       0);
            qm_dqrr_next(p_QmPortal->p_LowQmPortal);
        }
        else
        {
            qm_dqrr_next(p_QmPortal->p_LowQmPortal);
            qmPortalDqrrCciConsume(p_QmPortal->p_LowQmPortal, 1);
        }
        break;
    }

    PUNLOCK(p_QmPortal);

    if (!(p_Dq->stat & QM_DQRR_STAT_FD_VALID))
        return ERROR_CODE(E_EMPTY);

    return E_OK;
}
