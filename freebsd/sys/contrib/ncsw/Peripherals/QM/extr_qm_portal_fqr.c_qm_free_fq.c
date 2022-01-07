
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int t_QmPortal ;
typedef scalar_t__ t_Error ;
struct qman_fq {int fqid; } ;


 int E_INVALID_STATE ;
 scalar_t__ E_OK ;
 int MAJOR ;
 int QMAN_FQ_STATE_CHANGING ;
 int QMAN_FQ_STATE_NE ;
 int RETURN_ERROR (int ,int ,char*) ;
 int qman_destroy_fq (struct qman_fq*,int ) ;
 scalar_t__ qman_oos_fq (int *,struct qman_fq*) ;
 scalar_t__ qman_retire_fq (int *,struct qman_fq*,int*,int) ;

__attribute__((used)) static t_Error qm_free_fq(t_QmPortal *p_QmPortal, struct qman_fq *p_Fq)
{
    uint32_t flags=0;

    if (qman_retire_fq(p_QmPortal, p_Fq, &flags, 0) != E_OK)
        RETURN_ERROR(MAJOR, E_INVALID_STATE, ("qman_retire_fq() failed!"));

    if (flags & QMAN_FQ_STATE_CHANGING)
        RETURN_ERROR(MAJOR, E_INVALID_STATE, ("fq %d currently in use, will be retired", p_Fq->fqid));

    if (flags & QMAN_FQ_STATE_NE)
        RETURN_ERROR(MAJOR, E_INVALID_STATE, ("qman_retire_fq() failed;" "Frame Queue Not Empty, Need to dequeue"));


    if (qman_oos_fq(p_QmPortal, p_Fq) != E_OK)
        RETURN_ERROR(MAJOR, E_INVALID_STATE, ("qman_oos_fq() failed!"));

    qman_destroy_fq(p_Fq,0);

    return E_OK;
}
