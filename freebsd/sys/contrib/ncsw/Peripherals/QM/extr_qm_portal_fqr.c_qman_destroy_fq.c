
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct qman_fq {int state; } ;


 int ASSERT_COND (int) ;
 int FALSE ;
 int QMAN_FQ_DESTROY_PARKED ;
 int UNUSED (int) ;



__attribute__((used)) static void qman_destroy_fq(struct qman_fq *p_Fq, uint32_t flags)
{


    UNUSED(flags);
    switch (p_Fq->state) {
    case 128:
        ASSERT_COND(flags & QMAN_FQ_DESTROY_PARKED);
    case 129:
        return;
    default:
        break;
    }
    ASSERT_COND(FALSE);
}
