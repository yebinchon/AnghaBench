
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int options; int p_LowQmPortal; int frame; int fqidOffset; int * h_QmFqr; int h_App; } ;
typedef TYPE_1__ t_QmPortalFrameInfo ;
typedef TYPE_1__ t_QmPortal ;
typedef scalar_t__ t_Handle ;
typedef int t_Error ;
typedef int t_DpaaFD ;
struct qman_fq {int fqidOffset; int * h_QmFqr; int h_App; } ;
struct qm_dqrr_entry {int fd; int fqid; int contextB; } ;


 int ASSERT_COND (int ) ;
 int ERROR_CODE (int ) ;
 int E_EMPTY ;
 int E_INVALID_HANDLE ;
 int E_NULL_POINTER ;
 int E_OK ;
 int NCSW_PLOCK (TYPE_1__*) ;
 int PUNLOCK (TYPE_1__*) ;
 int QMAN_PORTAL_FLAG_DCA ;
 int QMAN_PORTAL_FLAG_RSTASH ;
 int SANITY_CHECK_RETURN_ERROR (TYPE_1__*,int ) ;
 int memcpy (void*,void*,int) ;
 struct qman_fq* ptr_from_aligned_int (int ) ;
 int qmPortalDqrrCciConsume (int ,int) ;
 int qmPortalDqrrDcaConsume1ptr (int ,struct qm_dqrr_entry*,int) ;
 int qmPortalDqrrPvbPrefetch (int ) ;
 int qmPortalDqrrPvbUpdate (int ) ;
 struct qm_dqrr_entry* qm_dqrr_current (int ) ;
 int qm_dqrr_next (int ) ;

t_Error QM_PORTAL_PollFrame(t_Handle h_QmPortal, t_QmPortalFrameInfo *p_frameInfo)
{
    t_QmPortal *p_QmPortal = (t_QmPortal *)h_QmPortal;
    struct qm_dqrr_entry *p_Dq;
    struct qman_fq *p_Fq;
    int prefetch;

    SANITY_CHECK_RETURN_ERROR(p_QmPortal, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(p_frameInfo, E_NULL_POINTER);

    NCSW_PLOCK(p_QmPortal);

    prefetch = !(p_QmPortal->options & QMAN_PORTAL_FLAG_RSTASH);
    if (prefetch)
        qmPortalDqrrPvbPrefetch(p_QmPortal->p_LowQmPortal);
    qmPortalDqrrPvbUpdate(p_QmPortal->p_LowQmPortal);
    p_Dq = qm_dqrr_current(p_QmPortal->p_LowQmPortal);
    if (!p_Dq)
    {
        PUNLOCK(p_QmPortal);
        return ERROR_CODE(E_EMPTY);
    }
    p_Fq = ptr_from_aligned_int(p_Dq->contextB);
    ASSERT_COND(p_Dq->fqid);
    if (p_Fq)
    {
        p_frameInfo->h_App = p_Fq->h_App;
        p_frameInfo->h_QmFqr = p_Fq->h_QmFqr;
        p_frameInfo->fqidOffset = p_Fq->fqidOffset;
        memcpy((void*)&p_frameInfo->frame, (void*)&p_Dq->fd, sizeof(t_DpaaFD));
    }
    else
    {
        p_frameInfo->h_App = p_QmPortal->h_App;
        p_frameInfo->h_QmFqr = ((void*)0);
        p_frameInfo->fqidOffset = p_Dq->fqid;
        memcpy((void*)&p_frameInfo->frame, (void*)&p_Dq->fd, sizeof(t_DpaaFD));
    }
    if (p_QmPortal->options & QMAN_PORTAL_FLAG_DCA) {
        qmPortalDqrrDcaConsume1ptr(p_QmPortal->p_LowQmPortal,
                                   p_Dq,
                                   0);
        qm_dqrr_next(p_QmPortal->p_LowQmPortal);
    } else {
        qm_dqrr_next(p_QmPortal->p_LowQmPortal);
        qmPortalDqrrCciConsume(p_QmPortal->p_LowQmPortal, 1);
    }

    PUNLOCK(p_QmPortal);

    return E_OK;
}
