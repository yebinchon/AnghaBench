
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct t4_cq {scalar_t__ cidx_inc; int cqid; int qid_mask; int ugts; } ;


 scalar_t__ CIDXINC_M ;
 int CIDXINC_V (scalar_t__) ;
 int INGRESSQID_V (int) ;
 int SEINTARM_V (int) ;
 int TIMERREG_V (int) ;
 int writel (int,int ) ;

__attribute__((used)) static inline int t4_arm_cq(struct t4_cq *cq, int se)
{
 u32 val;

 while (cq->cidx_inc > CIDXINC_M) {
  val = SEINTARM_V(0) | CIDXINC_V(CIDXINC_M) | TIMERREG_V(7) |
        INGRESSQID_V(cq->cqid & cq->qid_mask);
  writel(val, cq->ugts);
  cq->cidx_inc -= CIDXINC_M;
 }
 val = SEINTARM_V(se) | CIDXINC_V(cq->cidx_inc) | TIMERREG_V(6) |
       INGRESSQID_V(cq->cqid & cq->qid_mask);
 writel(val, cq->ugts);
 cq->cidx_inc = 0;
 return 0;
}
